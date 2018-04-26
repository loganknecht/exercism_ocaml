# Learn OCaml in Y Minutes
https://learnxinyminutes.com/docs/ocaml/

# Interesting Language Definitions
## Guarded Pattern Matching
Using conditionals within pattern matching to only execute in specific circumstances

**EXAMPLE**
```ocaml
(* Matching predicates, aka "guarded pattern matching". *)
let abs x =
    match x with
    | x when x < 0 -> -x
    | _ -> x
;;
```

## Function Declaration

```ocaml
let is_even = function
    | n when (n mod 2) = 0 -> true
    | _ -> false
;;
```

## Anonymous Function Declaration

```ocaml
let is_even = fun n ->
    match n with
    | n when (n mod 2) = 0 -> true
    | _ -> false
;;
```