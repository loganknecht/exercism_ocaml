(* Cribbed from here:
    https://ocaml.org/learn/tutorials/if_statements_loops_and_recursion.html
Allegedly there is
- `List.range`
- `List.reduce`

But I can't find those listed anywhere?
*)
let rec range (a :int) (b : int) : int list =
    if a > b
        then []
    else
        a :: range (a + 1) b
;;

(* Square the sum of the numbers up to the given number *)
let square_of_sum (n : int) : int =
    let set = (range 0 n) in
    let sum_of_set = (List.fold_left (fun accumulator x -> accumulator + x)
                                     0
                                     set)
    in (sum_of_set * sum_of_set)
;;

(* Sum the squares of the numbers up to the given number *)
let sum_of_squares (n : int) : int =
    let set = (range 0 n) in
    let sum_of_set = (List.fold_left (fun accumulator x -> accumulator + (x * x))
                                     0
                                     set)
    in sum_of_set
;;

(* Subtract sum of squares from square of sums *)
let difference_of_squares (n : int) : int =
    (square_of_sum n) - (sum_of_squares n)
;;