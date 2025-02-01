(= (append (Cons $x $xs) $member)
   (if (== $xs Nil)
       (Cons $x (Cons $member Nil)) 
       (Cons $x (append $xs $member))  
   )
)

!(append (Cons 3 (Cons 2 (Cons 3 Nil))) 6)
