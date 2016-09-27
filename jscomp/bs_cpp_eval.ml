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
  | Version of string 

let built_in = 
  ["ocaml_version", Version Sys.ocaml_version;
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
    with  _ -> Version v )
  | exception _ -> 
    try List.assoc str built_in 
    with Not_found -> invalid_arg ("Unbound value " ^ str)

exception Type_error

let eval  (x : Bs_cpp.t) : bool = 
  let rec aux (x : Bs_cpp.t) = 
    match x with 
    | Lident x -> query x 
    | Float s -> Float (float_of_string s)
    | Int64 i64 -> Int64 i64
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

      | ">", Version a, Version b  ->  Bool (a > b )
      | ">=", Version a, Version b -> Bool ( a>= b)
      | "<", Version a , Version b -> Bool (a < b )
      | "<=", Version a , Version b -> Bool (a <= b)
      | "==", Version a , Version b -> Bool (a = b) 

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
