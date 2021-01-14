/*Karan Sahu, 
kxs190007
cs4337.503
*/



color(blue).
color(yellow).
color(red).
color(white).

adjacent( X, Y) :- color(X), color(Y), X \= Y.

map( Waller, Harris, Walker, Montgomery, Liberty, FortBend, Colorado, Austin, Chambers, Galveston, Brazoria, Matagora, Wharton) :-
     adjacent(Walker, Montgomery), 
     adjacent(Montgomery, Liberty),
     adjacent(Montgomery, Harris), 
     adjacent(Montgomery, Waller),
     adjacent(Liberty, Harris), 
     adjacent(Liberty, Chambers),
     adjacent(Chambers, Harris), 
     adjacent(Galveston, Harris), 
     adjacent(Galveston, Brazoria),
     adjacent(Brazoria, Wharton), 
     adjacent(Brazoria, Harris), 
     adjacent(Brazoria, FortBend), 
     adjacent(Brazoria, Matagora),
     adjacent(Matagora, Wharton),
     adjacent(Wharton, FortBend), 
     adjacent(Wharton, Colorado), 
     adjacent(Wharton, Austin),
     adjacent(Colorado, Austin), 
     adjacent(Austin, Waller), 
     adjacent(Austin, FortBend),
     adjacent(Waller, FortBend),
     adjacent(Waller, Harris),
     adjacent(Harris, FortBend).