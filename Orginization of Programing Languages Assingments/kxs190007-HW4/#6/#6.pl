/*Karan Sahu, 
kxs190007
cs4337.503
*/


cases(groupA, 20).
cases(groupB, 39).
cases(groupC, 310).
cases(groupD, 307).
cases(groupE, 434).
cases(groupF, 200).
hospitalized(groupA, 5).
hospitalized(groupB, 6).
hospitalized(groupC, 22).
hospitalized(groupD, 55).
hospitalized(groupE, 79).
hospitalized(groupF, 80).
deaths(groupA, 0).
deaths(groupB, 2).
deaths(groupC, 4).
deaths(groupD, 6).
deaths(groupE, 23).
deaths(groupF, 24).
deathlist(L) :- findall(X, deaths(_,X),L).
hospitalizedlist(L) :- findall(X, hospitalized(_,X),L).
caseslist(L) :- findall(X, cases(_,X),L).
sum([], 0).
sum([H|T], N):-
    sum(T, X),
    N is X + H.
minlist([X], X) :- !.
minlist([X,Y|Tail], N):-
    ( X > Y ->
        min_list([Y|Tail], N)
    ;
        min_list([X|Tail], N)
    ).
maxlist([X], X) :- !.
maxlist([X,Y|Tail], N):-
    ( X < Y ->
        max_list([Y|Tail], N)
    ;
        max_list([X|Tail], N)
    ).
morecasesthan(Y,X) :-
    cases(Y,Z),
    Z > X.
lesscasesthan(Y,X) :-
    cases(Y,Z),
    Z < X.
equalcasesthan(Y,X) :-
    cases(Y,Z),
    Z is X.
moredeathsthan(Y,X) :-
    deaths(Y,Z),
    Z > X.
lessdeathsthan(Y,X) :-
    deaths(Y,Z),
    Z < X.
equaldeathsthan(Y,X) :-
    deaths(Y,Z),
    Z is X.
lesshospitalizedthan(Y,X) :-
    hospitalized(Y,Z),
    Z < X.
morehospitalizedthan(Y,X) :-
    hospitalized(Y,Z),
    Z > X.