 ;foldl: Processes elements from left to right
(: List type)
(: Nil List)
(: Cons (-> Number List List))

(= (foldl (Cons $x $xs) $accumulator $callback)
    (if (== $xs Nil)
        ($callback $x $accumulator)
        (foldl $xs ($callback $x $accumulator) $callback)
    )
)

(= (foldl (Cons $x $xs) $callback)
    (if (== $xs Nil)
        $x
        (foldl $xs $x $callback)
    )
)

(= (foldl Nil $callback)
    Nil
)

(= (mul $x $acc) (* $x $acc))

! (foldl Nil mul) ;[Nil]
! (foldl (Cons 1 Nil) mul) ;[1]
! (foldl (Cons 1 (Cons 2 (Cons 3 (Cons 4 Nil)))) mul) ;[24]
! (foldl (Cons 1 (Cons 2 (Cons 3 Nil))) mul) ;[6]