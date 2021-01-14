/*Karan Sahu, 
kxs190007
cs4337.503
*/


male(george).
male(louis).
male(archie).
male(peter).
male(mike).
male(jack).
male(james).
male(philip).
male(charles).
male(andrew).
male(edward).
male(mark).
male(timothy).
male(william).
male(harry).

female(autumn).
female(savannah).
female(isla).
female(mia).
female(lena).
female(beatrice).
female(eugenie).
female(louise).
female(elizabeth).
female(diana).
female(camilla).
female(sarah).
female(sophie).
female(catherine).
female(meghan).
female(charlotte).
female(zara).


parent(meghan, archie).
parent(anne, peter).
parent(anne, zara).
parent(mark, peter).
parent(mark, zara).
parent(peter, savannah).
parent(peter, isla).
parent(autumn, savannah).
parent(autumn, isla).
parent(andrew, beatrice).
parent(andrew, eugenie).
parent(sarah, beatrice).
parent(sarah, eugenie).
parent(zara, mia).
parent(zara, lena).
parent(mike, mia).
parent(mike, lena).
parent(edward, louise).
parent(edward, james).
parent(sophie, louise).
parent(sophie, james).
parent(elizabeth, charles).
parent(elizabeth, anne).
parent(elizabeth, andrew).
parent(elizabeth, edward).
parent(philip, charles).
parent(philip, anne).
parent(philip, andrew).
parent(philip, edward).
parent(charles, william).
parent(charles, harry).
parent(diana, william).
parent(diana, harry).
parent(william, george).
parent(william, charlotte).
parent(william, louis).
parent(catherine, george).
parent(catherine, charlotte).
parent(catherine, louis).
parent(harry, archie).

family(andrewfamily,2).
family(edwardfamily,2).
family(williamfamily,3).
family(harryfamily,1).
family(peterfamily,2).
family(zarafamily,2).
family(elizabethfamily,4).
family(charlesfamily, 2).
family(annefamily,2).


remarried(charles, camilla).
remarried(anne, timothy).

father(X,Y) :- parent(X,Y),male(X).
mother(X,Y) :- parent(X,Y),female(X).
child(X,Y) :- parent(Y,X).
son(X,Y) :- male(X),parent(Y,X).
daughter(X,Y) :- female(X),parent(Y,X).
sibling(X,Y) :-     
    parent(Z, X), 
    parent(Z, Y), 
    X \= Y.
sister(X, Y) :- 
    female(X), 
    sibling(X,Y).
brother(X, Y) :- 
    male(X), 
    sibling(X,Y).
greatgrandparent(X,Y):- parent(X,M),parent(M,Z),parent(Z,Y).
grandparent(X,Y):- parent(X,Z),parent(Z,Y).
grandfather(X,Y):- male(X), grandparent(X,Y).
grandmother(X,Y):- female(X), grandparent(X,Y).
greatgrandfather(X,Y):- male(X), greatgrandparent(X,Y).
greatgrandmother(X,Y):- female(X), greatgrandparent(X,Y).
stepchild(X,Y) :- parent(Z,X),remarried(Z,Y).
stepson(X,Y) :- male(X), stepchild(X,Y).
stepdaughter(X,Y) :- female(X), stepchild(X,Y).
family_list(L) :- findall(X, family(_,X),L).
bigger_than_family(Y,X) :-
    family(Y,Z),
    Z > X.
smaller_than_family(Y,X) :-
    family(Y,Z),
    Z < X.
equal_to_family(Y,X) :-
    family(Y,Z),
    Z is X.