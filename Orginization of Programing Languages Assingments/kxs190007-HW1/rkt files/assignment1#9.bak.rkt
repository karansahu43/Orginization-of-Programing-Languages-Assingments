#lang racket
;Karan , Sahu, kxs190007, and cs 4337.503
(define (depthhelp List highest count)
  (cond
    [(null? List) (if (< highest count) count highest)]
    [(list? (car List))
     (depthhelp (car List) highest (+ count 1))]
    [else (depthhelp (cdr List) highest count)]
   )
)

(define (depth List)
  (cond
    [(empty? List) 1]
    [else (depthhelp List 0 1)]
   )
)

(depth '(I J ((K) L) M)) 