open Printf

type nucleotide = A | C | G | T

(** Compute the hamming distance between the two lists. 

Assumes that the nucleotide_list_one and nucleotide_list_two are of equal length
*)

(* ATTEMPT ONE *)
(*
let hamming_distance (nucleotide_list_one : nucleotide list)
                     (nucleotide_list_two : nucleotide list)
                     : int option =
    let length = (List.length nucleotide_list_one) in
    let rec hamming_loop index hamming_sum = 
        let new_index = (index + 1) in
        if index >= length
            then hamming_sum
        else if nucleotide_list_one.[index] != nucleotide_list_two[index]
            then hamming_loop new_index (hamming_sum + 1)
        else
            hamming_loop new_index hamming_sum
    in hamming_loop 0
;;
*)

(* ATTEMPT TWO*)
let hamming_distance (nucleotide_list_one : nucleotide list)
                     (nucleotide_list_two : nucleotide list)
                     : int option =
    let rec hamming_loop (list_one : nucleotide list)
                         (list_two : nucleotide list)
                         (hamming_sum : int) = 
        let list_one_head = List.hd list_one in
        let list_one_tail = List.tl list_one in
        let list_two_head = List.hd list_two in
        let list_two_tail = List.tl list_two in
        if list_one == []
            then Some hamming_sum
        else if list_one_head <> list_two_head
            then hamming_loop list_one_tail 
                              list_two_tail 
                              (hamming_sum + 1)
        else
            hamming_loop list_one_tail 
                         list_two_tail 
                         hamming_sum
    in hamming_loop nucleotide_list_one 
                    nucleotide_list_two 
                    0
;;

(* ATTEMPT THREE *)
(* let hamming_distance (nucleotide_list_one : nucleotide list)
                     (nucleotide_list_two : nucleotide list)
                     : int option =
    let rec hamming_loop (list_one : nucleotide list)
                         (list_two : nucleotide list)
                         (hamming_sum : int) = 
        if list_one <> []
            then let list_one_head = List.hd list_one in
                 let list_two_head = List.hd list_two in
                 let list_one_tail = List.tl list_one in
                 let list_two_tail = List.tl list_two in
                if list_one_head <> list_two_head
                    then hamming_loop list_one_tail 
                                      list_two_tail 
                                      (hamming_sum + 1)
                else
                    hamming_loop list_one_tail 
                                 list_two_tail 
                                 (hamming_sum + 1)
        else
            Some hamming_sum
    in hamming_loop nucleotide_list_one 
                    nucleotide_list_two 
                    0
;;
 *)