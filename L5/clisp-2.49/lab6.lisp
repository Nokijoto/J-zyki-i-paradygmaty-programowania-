;Oblicz wartość wyrażenia: (2 + 3*4 / 8 )
(print  "Zadanie 1")
(print (+ 2( * 3 4/8)))

;2. Oblicz wartość wyrażenia: sin(12) + cos(256%32)
(print  "Zadanie 2")
(print (+ (sin 12) (cos (mod 256 32))))

;3. Napisz funkcje suma, obliczającą sumę dwóch liczb
(print  "Zadanie 3")
(defun suma (a b)
  (+ a b))
(print (suma 2 3))

;4. Napisz funkcje badającą, czy dana liczba jest parzysta
(print  "Zadanie 4")
(defun czyParzysta (a)
  (if (evenp a)
      (print "parzysta")
    (print "nieparzysta")))
(czyParzysta 2)
(czyParzysta 3)

;5. Napisz funkcje obliczającą wartość silni,
(print  "Zadanie 5 SILNIA")
(defun silnia (a)
  (if (= a 0)
      1
    (* a (silnia (- a 1)))))
(print (silnia 5))

;6. Napisz funkcję zwracającą n-ty element ciągu fibonacciego
(print  "Zadanie 6 FIBONIACCI")
(defun fib (n)
  (if (or (= n 0) (= n 1))
      1
    (+ (fib (- n 1)) (fib (- n 2)))))
(print (fib 5))

;7. Napisz funkcję, która oblicza sumę liczb nieparzystych w podanym przedziale
(print  "Zadanie 7")
(defun sumaNieparzystych (a b)
  (if (> a b)
      0
    (if (evenp a)
    (sumaNieparzystych (+ a 1) b)
      (+ a (sumaNieparzystych (+ a 1) b)))))
(print (sumaNieparzystych 1 10))

;8. Napisz funkcję, która oblicza sumę kwadratów liczb w podanym przedziale
(print  "Zadanie 8")
(defun sumaKwadratow (a b)
  (if (> a b)
      0
    (+ (* a a) (sumaKwadratow (+ a 1) b))))
(print (sumaKwadratow 1 10))

; Napisz fukcje która obliczy pierwiastki kwadratowego,
; fukcja poprosi o dane i zczyta je z klawiatury

(print  "Zadanie 9")
(defun pierwiastekKwadratowy ()
  (print "Podaj a")
  (setq a (read))
  (print "Podaj b")
  (setq b (read))
  (print "Podaj c")
  (setq c (read))
  (setq delta (- (* b b) (* 4 a c)))
  (if (< delta 0)
      (print "Brak pierwiastków")
    (if (= delta 0)
        (print (/ (- b) (* 2 a)))
      (progn
        (setq x1 (/ (+ (- b) (sqrt delta)) (* 2 a)))
        (setq x2 (/ (- (- b) (sqrt delta)) (* 2 a)))
        (print x1)
        (print x2)))))

; jakiś format śmieciowy


(defun rowKw()
    (format t "Podaj wspolczynniki do a, b i c : ~%")
    (format t "a: ")
    (setq a (read))
    (format t "b: ")
    (setq b (read))
    (format t "c: ")
    (setq c (read))
    (format t "Podano wspolczynniki: a= ~a, b= ~a, c= ~a~%" a b c)
    (format t "Rownanie: ~a*x^2 + ~a*x + ~a = 0~%" a b c)
    (setq delta (- (* b b) (* 4 a c)))
    (format t "Delta = ~a~%" delta)
    (if (< delta 0)
        (format t "Brak  rozwiazan w zbiorze liczb rzeczywistych Delta <0. ~%")
      (if (= delta 0)
          (format t "x0 = ~a~%" (/ (- b) (* 2 a)))
        (progn ; kilka elementów w jednej gałęzi    
          (setq x1 (/ (+ (- b) (sqrt delta)) (* 2 a)))
          (setq x2 (/ (- (- b) (sqrt delta)) (* 2 a)))
          (format t "x1 = ~a~%" x1)
          (format t "x2 = ~a~%" x2))))
)
(rowKw)
