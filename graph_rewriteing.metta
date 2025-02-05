 ;add-atom
 ;type (->  hyperon :: space ::DynSpace Atom (-> ))
 ;first argument atom refering some space
 ;second argument atom to be added type ofarument is atom add atom with out reduction
(: add-foo-eq (-> Atom (-> )))
(= (add-foo-eq $x)
    (add-atom &self (= (foo) $x)))
! (foo)
! (add-foo-eq (+ 1 2))
! (add-foo-eq (+ 3 4))
! (foo)
! (match &self (= (foo) $x)
    (quote $x))
 ;; add reduct
! (add-reduct &self (= (foo) (+ 3 4))) ; ()
! (foo) ; 7
! (match &self (= (foo) $x)
    (quote $x))
(Atom to remove)
! (match &self (Atom to remove) "Atom exists") ; "Atom exists"
! (remove-atom &self (Atom to remove)) ; ()
! (match &self (Atom to remove) "Unexpected") ; nothing
! (remove-atom &self (Atom to remove)) ; ()
