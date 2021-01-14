#lang racket
;Karan , Sahu, kxs190007, and cs 4337.503
(define (fullreverse List)
  (if (list? List)
      (reverse (map fullreverse List))
      List))

(fullreverse '( (a b) (c d) a b))

(fullreverse '( a b (c) b d))