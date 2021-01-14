/*Karan Sahu, 
kxs190007
cs4337.503
*/


unionlist([],X,X).

unionlist([X|Y],Z,W):- member(X,Z),!,unionlist(Y,Z,W).

unionlist([X|Y],Z,[X|W]):- unionlist(Y,Z,W).