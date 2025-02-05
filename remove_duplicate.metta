 ;function to remove duplicastes
(: List type)
(: Nil List)
(: Cons (-> Number List List))

(= (remove-member (Cons $x $xs) $member)
    (if (== $x $member)
        (remove-member $xs $member)
        (Cons $x (remove-member $xs $member))
    )
)

(= (remove-member Nil $_)
    Nil
)

(= (remove-duplicate (Cons $x $xs))
    (Cons $x (remove-duplicate (remove-member $xs $x)))
)

(= (remove-duplicate Nil)
    Nil
)

 ;evaluating the function
! (remove-duplicate (Cons 1 (Cons 1 (Cons 1 (Cons 4 Nil))))) ;[(Cons 1 (Cons 4 Nil))]
! (remove-duplicate (Cons 1 (Cons 3 (Cons 3 (Cons 4 Nil))))) ;[(Cons 1 (Cons 3 (Cons 4 Nil)))]