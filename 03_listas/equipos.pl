esGrande(boca).
esGrande(river).
esGrande(sanlorenzo).
esGrande(racing).
esGrande(independiente).
jugoEnLaB(river).
jugoEnLaB(sanlorenzo).
jugoEnLaB(racing).
jugoEn(maradona, boca).
jugoEn(maradona, newells).
jugoEn(maradona, argentinos).
jugoEn(sponton, platense).
jugoEn(sponton, river).
jugoEn(francescoli, river).
jugoEn(turcogarcia, racing).
ganoLibertadores(boca, [1977, 1978, 2000, 2001, 2003, 2007]).
ganoLibertadores(independiente, [1964, 1965, 1972, 1973, 1974, 1975, 1984]).
ganoLibertadores(estudiantes, [1968, 1969, 1970, 2009]).
ganoLibertadores(river, [1986, 1996]).
ganoLibertadores(racing, [1967]).
ganoLibertadores(velez, [1994]).
ganoLibertadores(argentinos, [1984]).
ganoLibertadores(newells, []).
ganoLibertadores(sanlorenzo, []).
ganoLibertadores(platense, []).
ganoIntercontinental(boca).
ganoIntercontinental(independiente).
ganoIntercontinental(estudiantes).
ganoIntercontinental(river.
ganoIntercontinental(racing).
ganoIntercontinental(velez).


noJugoB(X):- jugoEnLaB(X), !, fail.
noJugoB(_).

esMuyGrande(X) :- esGrande(X), noJugoB(X).
esGrandeDeVerdad(X) :- esGrande(X), noJugoB(X), ganoLibertadores(X, [_|_]), ganoIntercontinental(X), jugoEn(maradona, X).
ultimo([X], X).
ultimo([_|T], X) :- ultimo(T,X).

esAmargo(X) :- esGrande(X), jugoEnLaB(X), ganoLibertadores(X, L), ultimo(L, U), U < 2008.
esReAmargo(X) :- esGrande(X), jugoEnLaB(X), ganoLibertadores(X, []).

