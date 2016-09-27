
module Basics = struct
  
  exception Error
  
  type token = Parser.token
  
end

include Basics

let _eRR =
  Basics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState19
  | MenhirState17
  | MenhirState15
  | MenhirState13
  | MenhirState11
  | MenhirState7
  | MenhirState2
  | MenhirState0

# 48 "bs_cpp_parser.menhir.mly"
  
let mkinfix l name r  : Bs_cpp.t = 
  Bin (name,l,r)

# 38 "bs_cpp_parser.ml"

let rec _menhir_run11 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 43 "bs_cpp_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Parser.BANG ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | Parser.FLOAT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Parser.INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Parser.INT64 _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Parser.LIDENT _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | Parser.LPAREN ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | Parser.STRING _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11

and _menhir_run13 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 71 "bs_cpp_parser.ml"
) -> (
# 60 "bs_cpp_parser.menhir.mly"
       (string)
# 75 "bs_cpp_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Parser.BANG ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | Parser.FLOAT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | Parser.INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | Parser.INT64 _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | Parser.LIDENT _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | Parser.LPAREN ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | Parser.STRING _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13

and _menhir_run15 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 104 "bs_cpp_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Parser.BANG ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | Parser.FLOAT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | Parser.INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | Parser.INT64 _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | Parser.LIDENT _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | Parser.LPAREN ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | Parser.STRING _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15

and _menhir_run17 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 132 "bs_cpp_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Parser.BANG ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | Parser.FLOAT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | Parser.INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | Parser.INT64 _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | Parser.LIDENT _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | Parser.LPAREN ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | Parser.STRING _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17

and _menhir_run19 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 160 "bs_cpp_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Parser.BANG ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | Parser.FLOAT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | Parser.INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | Parser.INT64 _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | Parser.LIDENT _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | Parser.LPAREN ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | Parser.STRING _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 188 "bs_cpp_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv31 * _menhir_state) * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 198 "bs_cpp_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv29 * _menhir_state) * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 204 "bs_cpp_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (e : (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 209 "bs_cpp_parser.ml"
        ))) = _menhir_stack in
        let _1 = () in
        let _v : (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 215 "bs_cpp_parser.ml"
        ) = 
# 103 "bs_cpp_parser.menhir.mly"
    (Neg e)
# 219 "bs_cpp_parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv30)) : 'freshtv32)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv39 * _menhir_state) * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 227 "bs_cpp_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Parser.AMPERAMPER ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | Parser.BARBAR ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | Parser.GREATER ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | Parser.INFIXOP0 _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _v
        | Parser.LESS ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack)
        | Parser.RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv35 * _menhir_state) * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 247 "bs_cpp_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv33 * _menhir_state) * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 254 "bs_cpp_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 259 "bs_cpp_parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 266 "bs_cpp_parser.ml"
            ) = 
# 91 "bs_cpp_parser.menhir.mly"
    ( e )
# 270 "bs_cpp_parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv34)) : 'freshtv36)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv37 * _menhir_state) * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 280 "bs_cpp_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)) : 'freshtv40)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv43 * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 289 "bs_cpp_parser.ml"
        ))) * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 293 "bs_cpp_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv41 * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 299 "bs_cpp_parser.ml"
        ))) * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 303 "bs_cpp_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 308 "bs_cpp_parser.ml"
        ))), _, (e2 : (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 312 "bs_cpp_parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 318 "bs_cpp_parser.ml"
        ) = 
# 95 "bs_cpp_parser.menhir.mly"
    ( mkinfix e1 "<" e2 )
# 322 "bs_cpp_parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv42)) : 'freshtv44)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv47 * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 330 "bs_cpp_parser.ml"
        )) * (
# 60 "bs_cpp_parser.menhir.mly"
       (string)
# 334 "bs_cpp_parser.ml"
        )) * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 338 "bs_cpp_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv45 * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 344 "bs_cpp_parser.ml"
        )) * (
# 60 "bs_cpp_parser.menhir.mly"
       (string)
# 348 "bs_cpp_parser.ml"
        )) * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 352 "bs_cpp_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (l : (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 357 "bs_cpp_parser.ml"
        ))), (op : (
# 60 "bs_cpp_parser.menhir.mly"
       (string)
# 361 "bs_cpp_parser.ml"
        ))), _, (r : (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 365 "bs_cpp_parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 370 "bs_cpp_parser.ml"
        ) = 
# 93 "bs_cpp_parser.menhir.mly"
    ( mkinfix l op r  )
# 374 "bs_cpp_parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv46)) : 'freshtv48)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv51 * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 382 "bs_cpp_parser.ml"
        ))) * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 386 "bs_cpp_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv49 * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 392 "bs_cpp_parser.ml"
        ))) * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 396 "bs_cpp_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 401 "bs_cpp_parser.ml"
        ))), _, (e2 : (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 405 "bs_cpp_parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 411 "bs_cpp_parser.ml"
        ) = 
# 97 "bs_cpp_parser.menhir.mly"
    ( mkinfix e1 ">" e2 )
# 415 "bs_cpp_parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv50)) : 'freshtv52)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv57 * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 423 "bs_cpp_parser.ml"
        ))) * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 427 "bs_cpp_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Parser.AMPERAMPER ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | Parser.BARBAR ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | Parser.GREATER ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | Parser.INFIXOP0 _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _v
        | Parser.LESS ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack)
        | Parser.EOL | Parser.RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv53 * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 447 "bs_cpp_parser.ml"
            ))) * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 451 "bs_cpp_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 456 "bs_cpp_parser.ml"
            ))), _, (e2 : (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 460 "bs_cpp_parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 466 "bs_cpp_parser.ml"
            ) = 
# 101 "bs_cpp_parser.menhir.mly"
    ( mkinfix e1 "||" e2 )
# 470 "bs_cpp_parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv54)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv55 * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 480 "bs_cpp_parser.ml"
            ))) * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 484 "bs_cpp_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)) : 'freshtv58)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv63 * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 493 "bs_cpp_parser.ml"
        ))) * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 497 "bs_cpp_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Parser.AMPERAMPER ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | Parser.GREATER ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | Parser.INFIXOP0 _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _v
        | Parser.LESS ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack)
        | Parser.BARBAR | Parser.EOL | Parser.RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv59 * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 515 "bs_cpp_parser.ml"
            ))) * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 519 "bs_cpp_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 524 "bs_cpp_parser.ml"
            ))), _, (e2 : (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 528 "bs_cpp_parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 534 "bs_cpp_parser.ml"
            ) = 
# 99 "bs_cpp_parser.menhir.mly"
    ( mkinfix e1 "&&" e2 )
# 538 "bs_cpp_parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv60)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv61 * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 548 "bs_cpp_parser.ml"
            ))) * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 552 "bs_cpp_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)) : 'freshtv64)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv77 * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 561 "bs_cpp_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Parser.AMPERAMPER ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | Parser.BARBAR ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | Parser.EOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv73 * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 575 "bs_cpp_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv71 * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 581 "bs_cpp_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 586 "bs_cpp_parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 592 "bs_cpp_parser.ml"
            ) = 
# 82 "bs_cpp_parser.menhir.mly"
                ( e )
# 596 "bs_cpp_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv69) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 604 "bs_cpp_parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv67) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 612 "bs_cpp_parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv65) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 620 "bs_cpp_parser.ml"
            )) : (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 624 "bs_cpp_parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv66)) : 'freshtv68)) : 'freshtv70)) : 'freshtv72)) : 'freshtv74)
        | Parser.GREATER ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | Parser.INFIXOP0 _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _v
        | Parser.LESS ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv75 * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 640 "bs_cpp_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)) : 'freshtv78)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv13 * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 653 "bs_cpp_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv15 * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 662 "bs_cpp_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv17 * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 671 "bs_cpp_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv19 * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 680 "bs_cpp_parser.ml"
        )) * (
# 60 "bs_cpp_parser.menhir.mly"
       (string)
# 684 "bs_cpp_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv21 * _menhir_state * (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 693 "bs_cpp_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv28)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 67 "bs_cpp_parser.menhir.mly"
       (string * string option)
# 715 "bs_cpp_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv11) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((i : (
# 67 "bs_cpp_parser.menhir.mly"
       (string * string option)
# 725 "bs_cpp_parser.ml"
    )) : (
# 67 "bs_cpp_parser.menhir.mly"
       (string * string option)
# 729 "bs_cpp_parser.ml"
    )) = _v in
    ((let _v : (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 734 "bs_cpp_parser.ml"
    ) = 
# 89 "bs_cpp_parser.menhir.mly"
             (String (fst i) )
# 738 "bs_cpp_parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv12)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Parser.BANG ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | Parser.FLOAT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | Parser.INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | Parser.INT64 _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | Parser.LIDENT _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | Parser.LPAREN ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | Parser.STRING _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 55 "bs_cpp_parser.menhir.mly"
       (string)
# 770 "bs_cpp_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((lid : (
# 55 "bs_cpp_parser.menhir.mly"
       (string)
# 780 "bs_cpp_parser.ml"
    )) : (
# 55 "bs_cpp_parser.menhir.mly"
       (string)
# 784 "bs_cpp_parser.ml"
    )) = _v in
    ((let _v : (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 789 "bs_cpp_parser.ml"
    ) = 
# 85 "bs_cpp_parser.menhir.mly"
               ( Lident lid)
# 793 "bs_cpp_parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv10)

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 68 "bs_cpp_parser.menhir.mly"
       (int64)
# 800 "bs_cpp_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((i : (
# 68 "bs_cpp_parser.menhir.mly"
       (int64)
# 810 "bs_cpp_parser.ml"
    )) : (
# 68 "bs_cpp_parser.menhir.mly"
       (int64)
# 814 "bs_cpp_parser.ml"
    )) = _v in
    ((let _v : (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 819 "bs_cpp_parser.ml"
    ) = 
# 87 "bs_cpp_parser.menhir.mly"
            (Int64 i)
# 823 "bs_cpp_parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv8)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 69 "bs_cpp_parser.menhir.mly"
       (int)
# 830 "bs_cpp_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((i : (
# 69 "bs_cpp_parser.menhir.mly"
       (int)
# 840 "bs_cpp_parser.ml"
    )) : (
# 69 "bs_cpp_parser.menhir.mly"
       (int)
# 844 "bs_cpp_parser.ml"
    )) = _v in
    ((let _v : (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 849 "bs_cpp_parser.ml"
    ) = 
# 88 "bs_cpp_parser.menhir.mly"
          (Int64 (Int64.of_int i))
# 853 "bs_cpp_parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv6)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 56 "bs_cpp_parser.menhir.mly"
       (string)
# 860 "bs_cpp_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((f : (
# 56 "bs_cpp_parser.menhir.mly"
       (string)
# 870 "bs_cpp_parser.ml"
    )) : (
# 56 "bs_cpp_parser.menhir.mly"
       (string)
# 874 "bs_cpp_parser.ml"
    )) = _v in
    ((let _v : (
# 78 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 879 "bs_cpp_parser.ml"
    ) = 
# 86 "bs_cpp_parser.menhir.mly"
            ( Float f )
# 883 "bs_cpp_parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv4)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Parser.BANG ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | Parser.FLOAT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | Parser.INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | Parser.INT64 _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | Parser.LIDENT _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | Parser.LPAREN ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | Parser.STRING _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and main : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 927 "bs_cpp_parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Parser.BANG ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | Parser.FLOAT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Parser.INT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Parser.INT64 _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Parser.LIDENT _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Parser.LPAREN ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | Parser.STRING _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 104 "bs_cpp_parser.menhir.mly"
  



# 970 "bs_cpp_parser.ml"

# 220 "/Users/hzhang295/.opam/4.02.3+local-git-master/lib/menhir/standard.mly"
  


# 976 "bs_cpp_parser.ml"
