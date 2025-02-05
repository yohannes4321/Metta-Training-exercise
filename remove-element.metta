 ;remving element based on the value
(: List type)
(: Nil List)
(: Cons (-> Number List List))

(= (remove-element (Cons $x $xs) $memeber)
    (if (== $x $memeber)
        ($xs)
        (Cons $x (remove-element $xs $memeber))
    )
)

 ;evaluating the function
! (remove-element (Cons 1 (Cons 2 (Cons 3 (Cons 4 Nil)))) 1) ;[((Cons 2 (Cons 3 (Cons 4 Nil))))]
! (remove-element (Cons 1 (Cons 2 (Cons 3 (Cons 4 Nil)))) 4) ;[(Cons 1 (Cons 2 (Cons 3 (Nil))))]