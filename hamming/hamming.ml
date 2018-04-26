open Printf

type nucleotide = A | C | G | T

(** Compute the hamming distance between the two lists. 

Assumes that the nucleotide_list_one and nucleotide_list_two are of equal length
*)
let hamming_distance (nucleotide_list_one : nucleotide list)
                     (nucleotide_list_two : nucleotide list)
                     : int option =
    let rec hamming_loop (list_one : nucleotide list)
                         (list_two : nucleotide list)
                         (hamming_sum : int)
                         : int option = 
        match list_one, list_two with
        | [], [] -> Some hamming_sum
        | [], _  -> Some hamming_sum
        | _, []  -> Some hamming_sum
        | list_one_head::list_one_tail, list_two_head::list_two_tail -> 
            if (List.length list_one) <> (List.length list_two)
                then None
            else if list_one_head <> list_two_head
                then (hamming_loop list_one_tail
                                   list_two_tail
                                   (hamming_sum + 1))
            else
                (hamming_loop list_one_tail
                              list_two_tail
                              hamming_sum)
    in (hamming_loop nucleotide_list_one nucleotide_list_two 0)
;;