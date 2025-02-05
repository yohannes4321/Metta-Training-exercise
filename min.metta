 ;function for finding the minimum value in a list of numbers

(: List type)
(: Nil List)
(: Cons (->  Number List List))

(= (min (Cons $x $xs) $min)
    (if (== $xs Nil)
        (if (< $x $min)
            $x
            $min
        )
    (if (< $x $min)
        (min $xs $x)
        (min $xs $min)
    )
)
)
(= (min (Cons $x $xs))
    (if (== $xs Nil)
        $x
        (min $xs $x)
    )
)

! (min (Cons 2 (Cons 10 (Cons 7 Nil)))) ;2