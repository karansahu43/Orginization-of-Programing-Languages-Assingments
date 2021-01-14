#lang racket
;Karan , Sahu, kxs190007, and cs 4337.503

(define (sumlistunder7 List)
    (cond
       ((null? List) 0)
       ((list? (car List)) (sumlistunder7 (car List)))
       ((even? (car List)) (sumlistunder7 (cdr List)))
       ((< 6 (car List)) (sumlistunder7 (cdr List)))
       ((list? List) (+ (car List) (sumlistunder7(cdr List))))
       (else 0)
    ))

(sumlistunder7 '( 9 2 3 4 5))
(sumlistunder7 '( 9 2 3 (4 5)))

