
/* ala lubi koty */
lubi(ala,koty).
lubi(marek,psy).
lubi(janina,owoce).
lubi(franek,rower).
lubi(ala,tomka).
lubi(jan,koty).
lubi(alina,koty).


cenne(zloto).

kobieta(ala).
kobieta(ewelina).
kobieta(maria).

mezczyzna(jan).
mezczyzna(tomek).
mezczyzna(zbysio).
mezczyzna(marek)


daje(jan,gazeta,maria).

/* ala lubi osoby lubi¹ce koty*/
/*ala lubi X je¿eli X lubi koty*/

kogoLubi(ala,X):-
    lubi(X,koty).

kogoLubi1(ala,X):-
    lubi(X,psy),
    mezczyzna(X).
