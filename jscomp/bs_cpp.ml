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

(**
Some use cases:
1.
{[
#if (_MSC_VER == 1500)
   // ... Do VC9/Visual Studio 2008 specific stuff
#elif (_MSC_VER == 1600)
   // ... Do VC10/Visual Studio 2010 specific stuff
#elif (_MSC_VER == 1700)
   // ... Do VC11/Visual Studio 2012 specific stuff
#endif
]}

2.
{[
#if (_MSC_VER >= 1500 && _MSC_VER <= 1600)
   // ... Do VC9/Visual Studio 2008 specific stuff
#endif
]}


*)
type binop = string

type t = 
  | Lident of string
  | Float of string
  | Int64 of int64
  | Bin of binop * t * t 
  | Neg of t 

type token = Parser.token

let string_of_token (x : token) =
  match x with
  | AMPERAMPER -> "&&"
  | AMPERSAND -> "&"
  | AND -> "and"
  | AS -> "as"
  | ASSERT -> "assert"
  | BACKQUOTE -> "`"
  | BANG -> "!"
  | BAR -> "|"
  | BARBAR -> "||"
  | BARRBRACKET -> "|]"
  | BEGIN -> "begin"
  | CHAR c -> Printf.sprintf "%C" c 
  | CLASS -> "class"
  | COLON -> ":"
  | COLONCOLON -> "::"
  | COLONEQUAL -> ":="
  | COLONGREATER -> ":>"
  | COMMA -> ","
  | CONSTRAINT -> "constraint"
  | DO -> "do"
  | DONE -> "done"
  | DOT -> "."
  | DOTDOT -> ".."
  | DOWNTO -> "downto"
  | ELSE -> "else"
  | END -> "end"
  | EOF -> "eof"
  | EQUAL -> "="
  | EXCEPTION -> "exception"
  | EXTERNAL -> "external"
  | FALSE -> "false"
  | FLOAT s -> Printf.sprintf  "Float %S" s 
  | FOR -> "for"
  | FUN -> "fun"
  | FUNCTION -> "function"
  | FUNCTOR -> "functor"
  | GREATER -> ">"
  | GREATERRBRACE -> ">}"
  | GREATERRBRACKET -> ">]"
  | IF -> "if"
  | IN -> "in"
  | INCLUDE -> "include"
  | INFIXOP0 (string) -> Printf.sprintf "Infixop0 %S" string
  | INFIXOP1 (string) -> Printf.sprintf "Infixop1 %S" string
  | INFIXOP2 (string) -> Printf.sprintf "Infixop2 %S" string
  | INFIXOP3 (string) -> Printf.sprintf "Infixop3 %S" string
  | INFIXOP4 (string) -> Printf.sprintf "Infixop4 %S" string
  | INHERIT -> "inherit"
  | INITIALIZER -> "initializer"
  | INT  (int) -> Printf.sprintf "Int %d" int
  | INT32  (int32) -> Printf.sprintf "Int32 %ld" int32
  | INT64  (int64) -> Printf.sprintf "Int64 %Ld" int64
  | LABEL  (string) -> Printf.sprintf "Label %S" string
  | LAZY -> "lazy"
  | LBRACE -> "{"
  | LBRACELESS -> "{<"
  | LBRACKET -> "["
  | LBRACKETBAR -> "[|"
  | LBRACKETLESS -> "[<"
  | LBRACKETGREATER -> "[>"
  | LBRACKETPERCENT -> "[%"
  | LBRACKETPERCENTPERCENT -> "[%%"
  | LESS -> "<"
  | LESSMINUS -> "<-"
  | LET -> "let"
  | LIDENT  (string) -> Printf.sprintf "Lident %S" string
  | LPAREN -> "("
  | LBRACKETAT -> "[@"
  | LBRACKETATAT ->  "[@@"
  | LBRACKETATATAT -> "[@@@"
  | MATCH -> "match"
  | METHOD -> "method"
  | MINUS -> "-"
  | MINUSDOT -> "-."
  | MINUSGREATER -> "->"
  | MODULE -> "module"
  | MUTABLE -> "mutable"
  | NATIVEINT  (nativeint) -> Printf.sprintf "Nativeint %nd" nativeint
  | NEW -> "new"
  | NONREC -> "nonrec"
  | OBJECT -> "object"
  | OF -> "of"
  | OPEN -> "open"
  | OPTLABEL (string) -> Printf.sprintf "Optlabel %S" string
  | OR -> "or"
  | PERCENT -> "%"
  | PLUS -> "+"
  | PLUSDOT -> "+."
  | PLUSEQ -> "+="
  | PREFIXOP  (string) -> Printf.sprintf "Prefixop %S" string
  | PRIVATE -> "private"
  | QUESTION -> "?"
  | QUOTE -> "'"
  | RBRACE -> "}"
  | RBRACKET -> "]"
  | REC -> "rec"
  | RPAREN -> ")"
  | SEMI -> ";"
  | SEMISEMI -> ";;"
  | SHARP -> "#"
  | SHARPOP  (string) -> Printf.sprintf "Sharpop %S" string
  | SIG -> "sig"
  | STAR -> "*"
  | STRING  (string , _string_option) -> Printf.sprintf "String %S" string
  | STRUCT -> "struct"
  | THEN -> "then"
  | TILDE -> "~"
  | TO -> "to"
  | TRUE -> "true"
  | TRY -> "try"
  | TYPE -> "type"
  | UIDENT  (string) -> Printf.sprintf "Uident %S" string
  | UNDERSCORE -> "_"
  | VAL -> "val"
  | VIRTUAL -> "virtual"
  | WHEN -> "when"
  | WHILE -> "while"
  | WITH -> "with"
  | COMMENT _ -> "comment"
  | DOCSTRING _ -> "docstring"
  | EOL -> "eol"


