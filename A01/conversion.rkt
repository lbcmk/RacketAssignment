#lang racket/base
(require math)

(define (mph->m/s speed)
  (/ (* speed 1609.344) 3600))

(define (mph->s/mfn speed)
  (* (/ (/ (* speed 1609.344) 1.7018) 3600) 1209.6))

(define (psi->pa pressure)
  (/ (* pressure 4.4482) (/ (sqr 0.3048) (sqr 12))))

; Test cases
;(mph->m/s 1) ; 0.44704
;(mph->s/mfn 1) ; 317.74567
;(psi->pa 1) ; 6894.72379