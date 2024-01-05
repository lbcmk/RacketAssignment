#lang racket/base
(require math)

(define (final-cs135-grade participation midterm final assignments)
  (/ (+ (* participation 5) (* midterm 20) (* final 45) (* assignments 30)) 100))

(define (cs135-final-exam-grade-needed participation midterm assignments)
  (/ (- 6000 (+ (* participation 5) (* midterm 20) (* assignments 30))) 45))

(final-cs135-grade 10 20 30 40) ; 30
(cs135-final-exam-grade-needed 10 20 30) ; 103+1/3
(cs135-final-exam-grade-needed 50 50 90) ; 45+5/9
(cs135-final-exam-grade-needed 100 100 100) ; 11+1/9

(final-cs135-grade 10 20 (+ 103 1/3) 30) ; 60
(final-cs135-grade 50 50 (+ 45 5/9) 90) ; 60
(final-cs135-grade 100 100 (+ 11 1/9) 100) ; 60