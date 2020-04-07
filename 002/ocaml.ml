(*OCaml 4.10.0*)

let rec fn_sum a b limit summ =
  let c = a+b in
  match c with
  | c when c > limit -> summ
  | c when (c mod 2) == 0 -> fn_sum b c limit (summ+c)
  | _ -> fn_sum b c limit summ
;;

let a = fn_sum 0 1 4000000 0;;
print_int a;;
