#lang racket/base
(require math)

(define (manhatten-distance x1 x2 y1 y2)
  (+ (abs (- x1 x2)) (abs (- y1 y2))))

(define (batter-slugging-average s d t hr ab)
  (/ (+ s (* 2 d) (* 3 t) (* 4 hr)) ab))

(define (cone-area r h)
  (* pi r (+ r (sqrt (+ (sqr h) (sqr r))))))

(define (escape M r)
  (sqrt (/ (* 2 6.674e-11 M) r)))

(define (partition-size-approximation n)
  (* (/ 1 (* 4 n (sqrt 3))) (expt 2.718281828459045 (* pi (sqrt (/ (* 2 n) 3))))))

(define (d1 maturity rate volatility spot-price strike-price)
  (* (/ 1 (* volatility (sqrt maturity))) (+ (/ (log (/ spot-price strike-price)) (log 2.718281828459045)) (* (+ rate (/ (sqr volatility) 2)) maturity))))


; Test cases
;(manhatten-distance 5 10 15 20) ; 10
;(manhatten-distance 17 15 15 20) ; 7

;(batter-slugging-average 1 2 3 4 5) ; 6
;(batter-slugging-average 5 12 18 91 2) ; 223.5

;(cone-area 10 10) ; 758.45
;(cone-area 18 223) ; 13669.24

;(escape 12 16) ; 1.0005e-5
;(escape 14 22) ; 9.216e-6

;(partition-size-approximation 5) ; 8.94
;(partition-size-approximation 12) ; 86.94

;(d1 1 2 3 4 5) ; 2.0923
;(d1 5 10 15 20 25) ; 18.2546