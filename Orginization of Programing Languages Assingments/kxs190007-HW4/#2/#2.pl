/*Karan Sahu, 
kxs190007
cs4337.503
*/


elements([X|Y],W) :-
elements(X, Z),
elements(Y, V),!,W is Z + V.
elements([], 0):-!.
elements(_, 1):-!.