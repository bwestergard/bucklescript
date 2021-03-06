

let f g = fun [@bs] x -> g x 


let map f a =
  let l = Array.length a in
  if l = 0 then [||] else begin
    let r = Array.make l (f(Array.unsafe_get a 0) [@bs]) in
    for i = 1 to l - 1 do
      Array.unsafe_set r i (f(Array.unsafe_get a i) [@bs])
    done;
    r
  end

let map (type u ) (type v ) (f : u -> v)  (a : u array)
  : v array = map (fun [@bs] x -> f x ) a 

let init l f =
  if l = 0 then [||] else
  if l < 0 then invalid_arg "Array.init"
  (* See #6575. We could also check for maximum array size, but this depends
     on whether we create a float array or a regular one... *)
  else
   let res = Array.make l (f 0 [@bs]) in
   for i = 1 to pred l do
     Array.unsafe_set res i (f i [@bs])
   done;
   res

let init l f = init l (fun [@bs] x -> f x)

let fold_left f x a =
  let r = ref x in
  for i = 0 to Array.length a - 1 do
    r := f !r (Array.unsafe_get a i) [@bs]
  done;
  !r

let fold_left f x a  = fold_left (fun [@bs] x y -> f x y ) x a


external timeStart : string -> unit = "console.time" [@@bs.val]

external timeEnd : string -> unit =
  "console.timeEnd" [@@bs.val]


let f   =
  let open Array  in      
  fun () -> 
    let arr = init 10000000 (fun i -> float_of_int i) in
    let b = map (fun i -> i +. i -. 1. ) arr  in
    let v = fold_left (+.) 0. b in
    print_endline (string_of_float v)

let f2   =
  fun () -> 
    let arr = init 30_000_000 (fun i -> float_of_int i) in
    let b = map (fun i -> i +. i -. 1. ) arr  in
    let v = fold_left (+.) 0. b in
    print_endline (string_of_float v)

(* let time label f = *)
(*   timeStart label ; *)
(*   f (); *)
(*   timeEnd label *)

(* ;; *)
(* begin *)
(*   time "curried" f ; *)
(*   time "uncurried" f2; *)
(* end *)

let () =
  begin
    f2 ();
  end

(* ocamlbuild *)
