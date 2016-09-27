


#mod_use "bs_cpp.ml";;
#mod_use "bs_cpp_parser.ml";;
#mod_use "bs_cpp_eval.ml";;


let v = 
  let h = Bs_cpp_eval.from_string "(ocaml_major == 4 && ocaml_minor == 2)   \n 3 " 
  in 
  Bs_cpp_eval.eval h 



let h0 = 
  let v = Bs_cpp_eval.from_string "ocaml_version ==~ \"4.02.3\" \n" in 
  Bs_cpp_eval.eval v 

let h1 = Bs_cpp_eval.from_string "ocaml_version =~~ \"4.02.3\"\n"
