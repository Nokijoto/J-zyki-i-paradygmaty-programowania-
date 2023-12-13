parent( pam, bob).       % Pam is a parent of Bob
parent( tom, bob).
parent( tom, liz).
parent( bob, ann).
parent( bob, pat).
parent( pat, jim).

female( pam).            % Pam is female
female( liz).
female( ann).
female( pat).

male( jim).
male( tom).              % Tom is male
male( bob).

child(Y,X):-parent(X,Y).

mother(X,Y):-
    parent(X,Y),
    female(X).


ancestor(X,Y).



mother(X,Y):-
    female(X),
    parent(X,Y).

grandparent(X,Y):-
    parent(X,Z),
    parent(Z,Y).


sister(X,Z):-
    female(X),
    parent(Y,Z),
    parent(Y,X).

predecessor(X,Y):-
    parent(X,Z),
    parent(Z,Y).
