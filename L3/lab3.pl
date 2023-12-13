%LISTY

[].


pisz([]).
pisz([X|Y]):-
    write(X),write(' '),
    pisz(Y).

czy(X,[X| _]).
czy(X,[_|Yogon]):-
    czy(X,Yogon).








dl([],C):-write(C).
dl([_|Y],C):-
    Cc is C+1,
    dl(Y,Cc).


zlacz([],L,L).
zlacz([X|L1],L2,[X|L3]):- zlacz(L1,L2,L3).



dodaj(E,Lista,NowaLista):-
    NowaLista = [E,Lista].
dodajv1(E,Lista,[E,Lista).

usun(E,[X,Y],Wy):-
    ( E i



