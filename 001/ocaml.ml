(*The OCaml toplevel, version 4.05.0*)

let rec fn_sum a b =
  match a with
  | 0 -> b
  | a when (a mod 3) == 0 -> fn_sum (a-1) (b+a)
  | a when (a mod 5) == 0 -> fn_sum (a-1) (b+a)
  | _ -> fn_sum (a-1) b
;;

let a = fn_sum 999 0;;
print_int a;;
