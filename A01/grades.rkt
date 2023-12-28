#lang racket/base
(require math)

(define (final-cs135-grade participation midterm final assignments)
  (/ (+ participation midterm final assignments) 4))

(define (cs135-final-exam-grade-needed participation midterm assignments)
  (- 240 (+ participation midterm assignments)))

(final-cs135-grade 10 20 30 40) ; 25

(cs135-final-exam-grade-needed 10 20 30) ; 180
(cs135-final-exam-grade-needed 50 50 90) ; 50
(cs135-final-exam-grade-needed 100 100 100) ; -60