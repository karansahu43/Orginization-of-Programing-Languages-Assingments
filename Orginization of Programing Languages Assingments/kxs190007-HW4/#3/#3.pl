/*Karan Sahu, 
kxs190007
cs4337.503
*/


delete_last_2(L, L1) :-  
 append(L1, [_,_], L).

delements(L, L2) :-  
  append([_], LT, L), delete_last_2(LT, L2).