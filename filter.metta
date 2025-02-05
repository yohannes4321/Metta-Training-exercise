 ;filtering element of a list of numbers based on the specified calback function
(: List type)
(: Nil List)
(: Cons (-> Number List List))

(= (filter (Cons $x $xs) $callback)
    (if (== True ($callback $x))
        (Cons $x (filter $xs $callback))
        (filter $xs $callback)
    )
)

(= (filter Nil $callback)
    Nil
)

(= (is-even $x) (== 0 (% $x 2)))

! (filter Nil is-even) ;[Nil]
! (filter (Cons 1 (Cons 2 (Cons 3 (Cons 4 Nil)))) is-even) ;[(Cons 2 (Cons 4 Nil))]
! (filter (Cons 1 (Cons 2 (Cons 3 Nil))) is-even) ;[(Cons 2 Nil)]