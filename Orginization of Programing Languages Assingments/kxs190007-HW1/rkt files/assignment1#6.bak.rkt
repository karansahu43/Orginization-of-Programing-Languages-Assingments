#lang racket
;assignment1 #6
;Karan , Sahu, kxs190007, and cs 4337.503
(define (deleteprelast List)
    (cond
       ((null? List) '())
       ((= (length List) 2) (cdr List))
       ( (cons (car List) (deleteprelast (cdr List))))
    ))

(deleteprelast '(a b (c d) e))
(deleteprelast '(a b c d e))