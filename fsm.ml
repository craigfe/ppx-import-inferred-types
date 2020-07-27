module T = struct
  type 'a t = { trans : ('a * 'a) list }

  let linear = { trans = [ (`A, `B); (`B, `C) ] }
  let cyclic = { trans = [ (`A, `D); (`D, `A) ] }
end

module type S = module type of T
