; put you code here
(=(is_member (Cons $x $xs)$member)
(if (== $x $member)
    (True)
    (if (== $xs Nil )
        (False)
        (is_member $xs $member)
    ))

)
!(is_member (Cons 1 (Cons 2 (Cons 3 Nil)))0)
!(is_member (Cons 1 (Cons 2 (Cons 3 Nil)))3)