osoba(rafal,jerzy,malgorzata,mezczyzna,22).
osoba(izabela,jerzy,malgorzata,kobieta,20).
osoba(damian,jerzy,malgorzata,mezczyzna,10).


rodzice(X,A,B).

rodzenstwo(X,Y):-
    rodzice(X,A,B),
    rodzice(Y,A,B).
bracia(X,Y):-
rodzice(X,A,B),
rodzice(Y,A,B).

siostry(X,Y):-
rodzice(X,A,B),
rodzice(Y,A,B).

brat(X,Y):-
rodzice(X,A,B),
rodzice(Y,A,B).


siostra(X,Y):-
    rodzice(X,A,B),
rodzice(Y,A,B).
