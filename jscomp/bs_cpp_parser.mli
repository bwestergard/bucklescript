
(* The type of tokens. *)

type token = Parser.token

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val main: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Bs_cpp.t)
