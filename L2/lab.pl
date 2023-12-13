silnia(0,1):-!.
silnia(N,Wynik):-
    N > 0,
    NN is N-1,
    silnia(NN,NWynik),
    Wynik is N * NWynik.








warunek(X):-
    (X > 0 ->
    write('Liczba Dodatnia'),
    write('kolejne instrukcje');
    write('liczba ujemna')
    ).


dodaj(A,B,C):-
    C is A+B,
    write("Wynik:  "),
    write(C),nl.


main:-
    write('podaj liczbe'),read(N).

fibanaczi(0,0):-!.
fibanaczi(1,1):-!.
fibanaczi(N,Wynik):-
    N > 1,
    NN is N-1,
    NT is N-2,
    fibanaczi(NN,NWynik),
    fibanaczi(NT,NWT),
    Wynik is NWynik+ NWT.

regu:-
    write('podaj A: '),
    read(A),
    write('podaj n: '),
    read(N),
    N > 0 ->(
    potega(A,N,1,Wynik),
    write('Wynik: '),write(Wynik),nl
    ;
    write('blad')).

potega(_,0,X,X).
potega(A,N,X,Wynik):-
    N >0,
    NoweX is X * A,
    NoweN is N-1,
    potega(A,NoweN,NoweX,Wynik).




przenies(N, X, Y, Z) :-
    N > 0,
    M is N - 1,
    przenies(M, X, Z, Y),
    format('Przenieœ kr¹¿ek z wie¿y ~w na wie¿ê ~w~n', [X, Y]),
    przenies(M, Z, Y, X).

przenies(0, _, _, _) :- !.

rozwiazanie(N) :-
    przenies(N, 'pierwszej', 'drugiej', 'trzeciej').

