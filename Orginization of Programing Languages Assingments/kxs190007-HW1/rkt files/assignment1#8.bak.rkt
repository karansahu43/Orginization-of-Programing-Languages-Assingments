#lang racket
;Karan , Sahu, kxs190007, and cs 4337.503
(define (leaflist List)
 (reverse(flatten List)))

(leaflist  '(((1 2) (3 4)) ((1 2) (3 4))))

