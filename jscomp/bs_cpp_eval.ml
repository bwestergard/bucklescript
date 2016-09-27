(* Copyright (C) 2015-2016 Bloomberg Finance L.P.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * In addition to the permissions granted to you by the LGPL, you may combine
 * or link a "work that uses the Library" with a publicly distributed version
 * of this file to produce a combined library or application, then distribute
 * that combined work under the terms of your choosing, with no requirement
 * to comply with the obligations normally placed on you by section 4 of the
 * LGPL version 3 (or the corresponding section of a later version of the LGPL
 * should you choose to use a later version).
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA. *)

let from_string str = 
  let lexbuf = Lexing.from_string str in 
  Lexer.init ();
  let token lexbuf = 
    let v  = Lexer.token_with_comments lexbuf in
    print_endline (Bs_cpp.string_of_token v);
    v
  in 
  Bs_cpp_parser.main (token) lexbuf;;

type value = 
  | Bool of bool 
  | Float of float 
  | Int64 of int64
  | String of string 

let built_in = 
  ["ocaml_version", String Sys.ocaml_version;
   "ocaml_major", Int64 4L;
   "ocaml_minor", Int64 2L;
   "ocaml_patch",  Int64 3L;
  ]

let query str = 
  match Sys.getenv str with 
  | "true"  -> Bool true
  | "false" -> Bool false 
  | v -> 
    (try Float (float_of_string v ) 
    with  _ -> String v )
  | exception _ -> 
    try List.assoc str built_in 
    with Not_found -> invalid_arg ("Unbound value " ^ str)

exception Type_error

(** copied from {!Ext_string} *)
let starts_with s beg = 
  let beg_len = String.length beg in
  let s_len = String.length s in
   beg_len <=  s_len &&
  (let i = ref 0 in
    while !i <  beg_len 
          && String.unsafe_get s !i =
             String.unsafe_get beg !i do 
      incr i 
    done;
    !i = beg_len
  )

let _is_sub ~sub i s j ~len =
  let rec check k =
    if k = len
    then true
    else 
      String.unsafe_get sub (i+k) = 
      String.unsafe_get s (j+k) && check (k+1)
  in
  j+len <= String.length s && check 0


let find ?(start=0) ~sub s =
  let n = String.length sub in
  let i = ref start in
  let module M = struct exception Exit end  in
  try
    while !i + n <= String.length s do
      if _is_sub ~sub 0 s !i ~len:n then raise M.Exit;
      incr i
    done;
    -1
  with M.Exit ->
    !i

let eval  (x : Bs_cpp.t) : bool = 
  let rec aux (x : Bs_cpp.t) = 
    match x with 
    | Lident x -> query x 
    | Float s -> Float (float_of_string s)
    | Int64 i64 -> Int64 i64
    | String s -> String s
    | Bin (s,l,r) -> 
      begin match s, aux l, aux r with 
      | ">", Float a, Float b  ->  Bool (a > b )
      | ">=", Float a, Float b -> Bool ( a>= b)
      | "<", Float a , Float b -> Bool (a < b )
      | "<=", Float a , Float b -> Bool (a <= b)
      | "==", Float a , Float b -> Bool (a = b) 

      | ">", Int64 a, Int64 b  ->  Bool (a > b )
      | ">=", Int64 a, Int64 b -> Bool ( a>= b)
      | "<", Int64 a , Int64 b -> Bool (a < b )
      | "<=", Int64 a , Int64 b -> Bool (a <= b)
      | "==", Int64 a , Int64 b -> Bool (a = b) 

      | ">", String a, String b  ->  Bool (a > b )
      | ">=", String a, String b -> Bool ( a>= b)
      | "<", String a , String b -> Bool (a < b )
      | "<=", String a , String b -> Bool (a <= b)
      | "==", String a , String b -> Bool (a = b) 
      | "==~", String a, String b ->
        (* [a] starts with [b] *)
        Bool (starts_with a b)
      | "=~~", String a, String b ->
        (* [b] is a substring of [a] *)
        Bool (find ~sub:b a >= 0)
      | "==", Bool a , Bool b -> Bool (a = b) 

      | "&&", Bool a, Bool b -> Bool (a && b)
      | "||", Bool a, Bool b -> Bool (a || b) 

      | (">" | ">=" | "<" | "<=" | "==" | "&&" | "||"), _ , _ 
        -> raise Type_error 
      | (s) , _, _ -> 
        invalid_arg ("unknown operator" ^ s)
      end

    | Neg v -> 
      begin match aux v with 
      | Bool v -> Bool (not v)
      | _ -> raise Type_error 
      end
  in
  match aux x with 
  | Bool b -> b 
  | _ -> raise Type_error
