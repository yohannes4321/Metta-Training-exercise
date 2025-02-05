 ;reverse a list
(: List type)
(: Nil List)
(: Cons (-> Number List List))

(= (foldl (Cons $x $xs) $accumulator $callback)
    (if (== $xs Nil)
        ($callback $x $accumulator)
        (foldl $xs ($callback $x $accumulator) $callback)
    )
)

(= (foldl Nil $accumulator $callback)
    $accumulator
)

(= (prepend $x $list)
    (Cons $x $list)
)

(= (reverse $list)
    (foldl $list Nil prepend)
)

! (reverse Nil) ; [Nil]
! (reverse (Cons 1 Nil)) ; [Cons 1 Nil]
! (reverse (Cons 1 (Cons 2 (Cons 3 Nil)))) ; [Cons 3 (Cons 2 (Cons 1 Nil))]