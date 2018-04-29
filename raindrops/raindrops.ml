(*
    If the number contains 3 as a factor, output 'Pling'.
    If the number contains 5 as a factor, output 'Plang'.
    If the number contains 7 as a factor, output 'Plong'.
    If the number does not contain 3, 5, or 7 as a factor, just pass the number's digits straight through.
*)
let mod_to_string (numerator : int)
                  (denominator: int)
                  (string_to_return : string)
                  : string =
    if numerator mod denominator = 0
        then string_to_return
    else 
        ""
;;

let raindrop (input : int) : string =
    let drop = "" ^ (mod_to_string input 3 "Pling") 
                  ^ (mod_to_string input 5 "Plang") 
                  ^ (mod_to_string input 7 "Plong") in
    if drop = ""
        then (string_of_int input)
    else
        drop
;;