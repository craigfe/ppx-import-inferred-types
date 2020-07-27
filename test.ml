open Ppxlib

let () =
  let loc = Location.none in
  [%str module type A = [%import: (module Fsm.S)]]
  |> Format.printf "@[<v 0>PPX is magic:@,@,%a@,@]@." Ppxlib.Pprintast.structure
