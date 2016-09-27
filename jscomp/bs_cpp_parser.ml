
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
  | MenhirState18
  | MenhirState16
  | MenhirState14
  | MenhirState12
  | MenhirState10
  | MenhirState6
  | MenhirState1
  | MenhirState0

# 48 "bs_cpp_parser.menhir.mly"
  
let mkinfix l name r  : Bs_cpp.t = 
  Bin (name,l,r)

# 38 "bs_cpp_parser.ml"

let rec _menhir_run10 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 43 "bs_cpp_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Parser.BANG ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | Parser.FLOAT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | Parser.INT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | Parser.INT64 _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | Parser.LIDENT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | Parser.LPAREN ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10

and _menhir_run12 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 69 "bs_cpp_parser.ml"
) -> (
# 60 "bs_cpp_parser.menhir.mly"
       (string)
# 73 "bs_cpp_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Parser.BANG ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | Parser.FLOAT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | Parser.INT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | Parser.INT64 _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | Parser.LIDENT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | Parser.LPAREN ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12

and _menhir_run14 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 100 "bs_cpp_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Parser.BANG ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | Parser.FLOAT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | Parser.INT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | Parser.INT64 _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | Parser.LIDENT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | Parser.LPAREN ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14

and _menhir_run16 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 126 "bs_cpp_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Parser.BANG ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | Parser.FLOAT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | Parser.INT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | Parser.INT64 _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | Parser.LIDENT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | Parser.LPAREN ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16

and _menhir_run18 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 152 "bs_cpp_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Parser.BANG ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | Parser.FLOAT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | Parser.INT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | Parser.INT64 _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | Parser.LIDENT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | Parser.LPAREN ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 178 "bs_cpp_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv29 * _menhir_state) * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 188 "bs_cpp_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv27 * _menhir_state) * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 194 "bs_cpp_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (e : (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 199 "bs_cpp_parser.ml"
        ))) = _menhir_stack in
        let _1 = () in
        let _v : (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 205 "bs_cpp_parser.ml"
        ) = 
# 101 "bs_cpp_parser.menhir.mly"
    (Neg e)
# 209 "bs_cpp_parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv28)) : 'freshtv30)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv37 * _menhir_state) * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 217 "bs_cpp_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Parser.AMPERAMPER ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | Parser.BARBAR ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | Parser.GREATER ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | Parser.INFIXOP0 _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _v
        | Parser.LESS ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack)
        | Parser.RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv33 * _menhir_state) * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 237 "bs_cpp_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv31 * _menhir_state) * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 244 "bs_cpp_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 249 "bs_cpp_parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 256 "bs_cpp_parser.ml"
            ) = 
# 89 "bs_cpp_parser.menhir.mly"
    ( e )
# 260 "bs_cpp_parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv32)) : 'freshtv34)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv35 * _menhir_state) * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 270 "bs_cpp_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)) : 'freshtv38)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv41 * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 279 "bs_cpp_parser.ml"
        ))) * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 283 "bs_cpp_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv39 * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 289 "bs_cpp_parser.ml"
        ))) * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 293 "bs_cpp_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 298 "bs_cpp_parser.ml"
        ))), _, (e2 : (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 302 "bs_cpp_parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 308 "bs_cpp_parser.ml"
        ) = 
# 93 "bs_cpp_parser.menhir.mly"
    ( mkinfix e1 "<" e2 )
# 312 "bs_cpp_parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv40)) : 'freshtv42)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv45 * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 320 "bs_cpp_parser.ml"
        )) * (
# 60 "bs_cpp_parser.menhir.mly"
       (string)
# 324 "bs_cpp_parser.ml"
        )) * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 328 "bs_cpp_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv43 * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 334 "bs_cpp_parser.ml"
        )) * (
# 60 "bs_cpp_parser.menhir.mly"
       (string)
# 338 "bs_cpp_parser.ml"
        )) * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 342 "bs_cpp_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (l : (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 347 "bs_cpp_parser.ml"
        ))), (op : (
# 60 "bs_cpp_parser.menhir.mly"
       (string)
# 351 "bs_cpp_parser.ml"
        ))), _, (r : (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 355 "bs_cpp_parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 360 "bs_cpp_parser.ml"
        ) = 
# 91 "bs_cpp_parser.menhir.mly"
    ( mkinfix l op r  )
# 364 "bs_cpp_parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv44)) : 'freshtv46)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv49 * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 372 "bs_cpp_parser.ml"
        ))) * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 376 "bs_cpp_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv47 * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 382 "bs_cpp_parser.ml"
        ))) * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 386 "bs_cpp_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 391 "bs_cpp_parser.ml"
        ))), _, (e2 : (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 395 "bs_cpp_parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 401 "bs_cpp_parser.ml"
        ) = 
# 95 "bs_cpp_parser.menhir.mly"
    ( mkinfix e1 ">" e2 )
# 405 "bs_cpp_parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv48)) : 'freshtv50)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv55 * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 413 "bs_cpp_parser.ml"
        ))) * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 417 "bs_cpp_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Parser.AMPERAMPER ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | Parser.BARBAR ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | Parser.GREATER ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | Parser.INFIXOP0 _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _v
        | Parser.LESS ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack)
        | Parser.EOL | Parser.RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv51 * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 437 "bs_cpp_parser.ml"
            ))) * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 441 "bs_cpp_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 446 "bs_cpp_parser.ml"
            ))), _, (e2 : (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 450 "bs_cpp_parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 456 "bs_cpp_parser.ml"
            ) = 
# 99 "bs_cpp_parser.menhir.mly"
    ( mkinfix e1 "||" e2 )
# 460 "bs_cpp_parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv52)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv53 * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 470 "bs_cpp_parser.ml"
            ))) * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 474 "bs_cpp_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)) : 'freshtv56)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv61 * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 483 "bs_cpp_parser.ml"
        ))) * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 487 "bs_cpp_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Parser.AMPERAMPER ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | Parser.GREATER ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | Parser.INFIXOP0 _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _v
        | Parser.LESS ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack)
        | Parser.BARBAR | Parser.EOL | Parser.RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv57 * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 505 "bs_cpp_parser.ml"
            ))) * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 509 "bs_cpp_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 514 "bs_cpp_parser.ml"
            ))), _, (e2 : (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 518 "bs_cpp_parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 524 "bs_cpp_parser.ml"
            ) = 
# 97 "bs_cpp_parser.menhir.mly"
    ( mkinfix e1 "&&" e2 )
# 528 "bs_cpp_parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv58)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv59 * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 538 "bs_cpp_parser.ml"
            ))) * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 542 "bs_cpp_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)) : 'freshtv62)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75 * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 551 "bs_cpp_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Parser.AMPERAMPER ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | Parser.BARBAR ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | Parser.EOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv71 * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 565 "bs_cpp_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv69 * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 571 "bs_cpp_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 576 "bs_cpp_parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 76 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 582 "bs_cpp_parser.ml"
            ) = 
# 81 "bs_cpp_parser.menhir.mly"
                ( e )
# 586 "bs_cpp_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv67) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 76 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 594 "bs_cpp_parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv65) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 76 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 602 "bs_cpp_parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv63) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 76 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 610 "bs_cpp_parser.ml"
            )) : (
# 76 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 614 "bs_cpp_parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv64)) : 'freshtv66)) : 'freshtv68)) : 'freshtv70)) : 'freshtv72)
        | Parser.GREATER ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | Parser.INFIXOP0 _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) _v
        | Parser.LESS ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv73 * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 630 "bs_cpp_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)) : 'freshtv76)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv11 * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 643 "bs_cpp_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv13 * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 652 "bs_cpp_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv15 * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 661 "bs_cpp_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv17 * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 670 "bs_cpp_parser.ml"
        )) * (
# 60 "bs_cpp_parser.menhir.mly"
       (string)
# 674 "bs_cpp_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv19 * _menhir_state * (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 683 "bs_cpp_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv26)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Parser.BANG ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | Parser.FLOAT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | Parser.INT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | Parser.INT64 _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | Parser.LIDENT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | Parser.LPAREN ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState1

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 55 "bs_cpp_parser.menhir.mly"
       (string)
# 728 "bs_cpp_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((lid : (
# 55 "bs_cpp_parser.menhir.mly"
       (string)
# 738 "bs_cpp_parser.ml"
    )) : (
# 55 "bs_cpp_parser.menhir.mly"
       (string)
# 742 "bs_cpp_parser.ml"
    )) = _v in
    ((let _v : (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 747 "bs_cpp_parser.ml"
    ) = 
# 84 "bs_cpp_parser.menhir.mly"
               ( Lident lid)
# 751 "bs_cpp_parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv10)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 67 "bs_cpp_parser.menhir.mly"
       (int64)
# 758 "bs_cpp_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((i : (
# 67 "bs_cpp_parser.menhir.mly"
       (int64)
# 768 "bs_cpp_parser.ml"
    )) : (
# 67 "bs_cpp_parser.menhir.mly"
       (int64)
# 772 "bs_cpp_parser.ml"
    )) = _v in
    ((let _v : (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 777 "bs_cpp_parser.ml"
    ) = 
# 86 "bs_cpp_parser.menhir.mly"
            (Int64 i)
# 781 "bs_cpp_parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv8)

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 68 "bs_cpp_parser.menhir.mly"
       (int)
# 788 "bs_cpp_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((i : (
# 68 "bs_cpp_parser.menhir.mly"
       (int)
# 798 "bs_cpp_parser.ml"
    )) : (
# 68 "bs_cpp_parser.menhir.mly"
       (int)
# 802 "bs_cpp_parser.ml"
    )) = _v in
    ((let _v : (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 807 "bs_cpp_parser.ml"
    ) = 
# 87 "bs_cpp_parser.menhir.mly"
          (Int64 (Int64.of_int i))
# 811 "bs_cpp_parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv6)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 56 "bs_cpp_parser.menhir.mly"
       (string)
# 818 "bs_cpp_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((f : (
# 56 "bs_cpp_parser.menhir.mly"
       (string)
# 828 "bs_cpp_parser.ml"
    )) : (
# 56 "bs_cpp_parser.menhir.mly"
       (string)
# 832 "bs_cpp_parser.ml"
    )) = _v in
    ((let _v : (
# 77 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 837 "bs_cpp_parser.ml"
    ) = 
# 85 "bs_cpp_parser.menhir.mly"
            ( Float f )
# 841 "bs_cpp_parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv4)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Parser.BANG ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | Parser.FLOAT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | Parser.INT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | Parser.INT64 _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | Parser.LIDENT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | Parser.LPAREN ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6

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
# 76 "bs_cpp_parser.menhir.mly"
      (Bs_cpp.t)
# 883 "bs_cpp_parser.ml"
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
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | Parser.FLOAT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Parser.INT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Parser.INT64 _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Parser.LIDENT _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Parser.LPAREN ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 102 "bs_cpp_parser.menhir.mly"
  



# 924 "bs_cpp_parser.ml"

# 220 "/Users/hzhang295/.opam/4.02.3+local-git-master/lib/menhir/standard.mly"
  


# 930 "bs_cpp_parser.ml"
