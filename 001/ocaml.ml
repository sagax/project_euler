(*The OCaml toplevel, version 4.05.0*)

let rec summ_f number end_number summ =
    if number <= end_number then (
        let _mod_to_3 = number mod 3 in
        let _mod_to_5 = number mod 5 in
        let _nn = number + 1 in

        if _mod_to_3 = 0 || _mod_to_5 = 0 then (
            let _s = summ + number in

            if _nn <= end_number then (
                summ_f _nn end_number _s;
            )
            else (
                print_int _s;
            );
        )
        else (
            if _nn <= end_number then (
                summ_f _nn end_number summ;
            ) else (
                print_int summ;
            );
        );
    );;

summ_f 0 999 0;;
