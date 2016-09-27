


#mod_use "bs_cpp.ml";;
#mod_use "bs_cpp_parser.ml";;


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
  | Version of string 

let built_in = 
  ["ocaml_version", Version Sys.ocaml_version]

let query str = 
  match Sys.getenv str with 
  | "true"  -> Bool true
  | "false" -> Bool false 
  | v -> 
    (try Float (string_of_float v ) 
    with  _ -> Version v )
  | exception _ -> 
    try List.assoc v built_in 
    with Not_found -> invalid_arg ("Unbound value " ^ str)

exception Type_error

let eval  (x : Bs_cpp.t) : bool = 
  let rec aux x = 
    match x with 
    | Lident x -> query x 
    | Float s -> string_of_float s 
    | Bin (s,l,r) -> 
      begin match s,l,r with 
      | ">", Float a, Float b  ->  Bool (a > b )
      | ">=", Float a, Float b -> Bool ( a>= b)
      | "<", Float a , Float b -> Bool (a < b )
      | "<=", Float a , Float b -> Bool (a <= b)
      | "==", Float a , Float b -> Bool (a = b) 
      | _ -> raise Type_error
      end
    | Neg v -> 
      begin match aux v with 
      | Bool v -> Bool (not v)
      | _ -> raise Type_error 
      end
let v = 
  from_string "(ocaml > 3.0)   \n 3 "
