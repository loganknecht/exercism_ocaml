open Printf

type nucleotide = A | C | G | T

(** Compute the hamming distance between the two lists. 

Assumes that the nucleotide_list_one and nucleotide_list_two are of equal length
*)
let hamming_distance (nucleotide_list_one : nucleotide list)
                     (nucleotide_list_two : nucleotide list)
                     : int option =
    let length = List.length nucleotide_list_one in
    let rec hamming_loop index hamming_sum = 
        if index >= (length - 1)
            then hamming_sum
        else if (List.nth nucleotide_list_one index) != (List.nth nucleotide_list_two index)
            then hamming_loop (index + 1) (hamming_sum + 1)
        else
            hamming_loop (index + 1) hamming_sum
    in Some (hamming_loop 0 0)
;;
