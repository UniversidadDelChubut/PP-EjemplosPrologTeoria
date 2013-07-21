grandes([boca, river, sanlorenzo, independiente, racing]).
esGrande(Equipo) :- grandes(Grandes), member(Equipo, Grandes).

jugador(maradona, [argentinos, boca, newells]).
jugador(palermo, [estudiantes, boca]).
jugador(sponton, [platente, river, lanus, espaniol]).
jugador(francescoli, [river]).

jugoEn(Jugador, Equipo) :- jugador(Jugador, Equipos), member(Equipo, Equipos).

ganoLibertadores(boca, [1977, 1978, 2000, 2001, 2003, 2007]).
ganoLibertadores(independiente, [1964, 1965, 1972, 1973, 1974, 1975, 1984]).
ganoLibertadores(estudiantes, [1968, 1969, 1970, 2009]).
ganoLibertadores(river, [1986, 1996]).
ganoLibertadores(racing, [1967]).
ganoLibertadores(velez, [1994]).
ganoLibertadores(argentinos, [1984]).

campeonesDelMundo([boca, independiente, estudiantes, river, racing, velez]).
ganoIntercontinental(Equipo) :- campeonesDelMundo(Campeones), member(Equipo, Campeones).

noJugoB(boca).
jugoEnLaB(X) :- not(noJugoB(X)).

esGrandeDeVerdad(X) :- esGrande(X), noJugoB(X), ganoLibertadores(X, [_|_]), ganoIntercontinental(X), jugoEn(maradona, X).
esReAmargo(X) :- esGrande(X), jugoEnLaB(X), not(ganoLibertadores(X, [_|_])).

