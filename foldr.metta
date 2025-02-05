 ; foldr: Processes elements from right to left
(: List type)
(: Nil List)
(: Cons (-> Number List List))

(= (foldr (Cons $x $xs) $accumulator $callback)
    (if (== $xs Nil)
        ($callback $x $accumulator)
        ($callback $x (foldr $xs $accumulator $callback))
    )
)

(= (foldr Nil $accumulator $callback)
    $accumulator
)

(= (mul $x $acc) (* $x $acc))

! (foldr Nil 1 mul) ; 1
! (foldr (Cons 1 Nil) 1 mul) ; 1
! (foldr (Cons 1 (Cons 2 (Cons 3 (Cons 4 Nil)))) 1 mul) ; 24
! (foldr (Cons 1 (Cons 2 (Cons 3 Nil))) 1 mul) ; 6
