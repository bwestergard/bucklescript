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

%{
let mkinfix l name r  : Bs_cpp.t = 
  Bin (name,l,r)
%}
/* Tokens */


%token <string> LIDENT
%token <string> FLOAT
%token LESS
%token AMPERAMPER
%token BANG
%token <string> INFIXOP0 /* ['=' '<' '>' '|' '&' '$'] symbolchar * */

%token BARBAR
%token EOL
%token LPAREN 
%token RPAREN
%token GREATER
%token <string * string option> STRING
%token <int64> INT64
%token <int> INT
%right    BARBAR                     /* expr (e || e || e) */
%right    AMPERAMPER          /* expr (e && e && e) */
(* %nonassoc below_EQUAL *)
%left     INFIXOP0  LESS GREATER   /* expr (e OP e OP e) */
/* Finally, the first tokens of simple_expr are above everything else. */
%nonassoc BANG
%start main
%type <Bs_cpp.t> main
%type <Bs_cpp.t> expr
%%

main:
| e = expr; EOL { e }
    
expr:
| lid = LIDENT { Lident lid}
| f = FLOAT { Float f }
| i = INT64 {Int64 i}
| i = INT {Int64 (Int64.of_int i)}
| i = STRING {String (fst i) }
| LPAREN ;  e = expr;  RPAREN
    { e }
| l = expr;  op =  INFIXOP0;  r = expr
    { mkinfix l op r  }
| e1 = expr;  LESS; e2 = expr
    { mkinfix e1 "<" e2 }
| e1 = expr;  GREATER ;e2 = expr
    { mkinfix e1 ">" e2 }
| e1 = expr;  AMPERAMPER; e2 = expr
    { mkinfix e1 "&&" e2 }
| e1 = expr; BARBAR; e2 = expr
    { mkinfix e1 "||" e2 }
| BANG; e = expr
    {Neg e}
%%


