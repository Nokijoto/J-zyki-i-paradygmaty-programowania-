(setq a 10); ustawianie zmiennej
(print a) ;  print
(let x 3) ; tymczasowa zmienna
(defconstant +PI+ 2323) ; stała


; znaki specjalne
; T - prawda
; NIL - fałsz

(+ 2 2); odwrodna notacja polska

(if T 3 9   ); if   

:to-jest-slowo-kluczonwe ; zapisane w dwukropku

(+ 4 3/5 ) ; sapisuje w ulamku nie w dziesietnych


(exp 2) ; potegowanie
(sqrt 4) ; pierwiastek
(log 2 3) ; logarytm
(sin 2) ; sinus
(mod 3 2) ; modulo  


; mozna własne instrukcje warunkowe


(if (eq 2 2) (print "tak") (print "nie")); instrukcja warunkowa


(when t 5 ); instrukcja warunkowa

(unless t 5 ); instrukcja warunkowa

;(set x 'b); ustawianie zmiennej

;(case x (a 5)((d e )7 ((b f )3)(otherwise 9))); instrukcja warunkowa


(cond ); każdy element jest jako lista


(setq a 3)

(cond 
    ((evenp a) a)
    ((> a 7) (/ a 2))
    ((< a 5) (- a 1))
    (t 25) ; inaczej 
)



; funckje
(defun suma(x y z)
    (+ x y z)
)

(print (suma 1 2 3))


(defun silnia(n)(if (> n 0)  (* n (silnia (- n 1)))1 ))
(print(silnia 5))


; 13.12
; pętle w lispie

(setq a 4)
(loop 
    (setq a (+ a 1)); a =5 ,6 ,7, 8 
    (when (> a 7)(return a)) ; => 8
)

; a =8
;(loop 
;    (setq a(- a 1)) ; a =7,6,5,4,3,2
;    (when (< a 3)(return)) => nil
;)

(dotimes 
    (i 10)
    (print i)
) ; 0,1,2,3,4,5,6,7,8,9

; auto icnrementacja
(dotimes
    (i 4)
    (format t "~&I is ~S." i)  
)

; po i i po j
;(do 
;   (var1 stat1 step1)
;
;)


(do 
    ((x 1 (+ x 1))
    (y 1 (* y 2)))
    ((> x 5) y)
    (print y)
    (print 'working)
)


(do ((i 0 (incf i))
    (j 10 (decf j)))
    ((zerop j) 'done) ; zerop sprawdza czy j jest równe 0
    (print (+ i j))
)


;lista
(cons 2 5) ; (2 . 5) utworzenie pary 2 głowa 
'(1 2 3 4 5)
(car '(1 2 3)) ; => 1
(cdr '(1 2 3)) ; =>  2 3 