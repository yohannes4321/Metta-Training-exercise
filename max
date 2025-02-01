;find the maximum element in the list of numbers
(: List type)
(: Nil List)
(: Cons (-> Number List List))

(= (max (Cons $x $xs) $max) 
    (if (== $xs Nil)
        (if (> $x $max)
            ($x)
            ($max)
        )
        (if (> $x $max)
            (max $xs $x)
            (max $xs $max)
        )
    )
)

(= (max (Cons $x $xs)) 
    (if (== $xs Nil)
        ($x)
        (max $xs $x)
    )
)

!(max (Cons 11 (Cons 9 (Cons 7 Nil)))) ;11