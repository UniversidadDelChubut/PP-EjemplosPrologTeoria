padre(camilo, abel).
madre(luisa, abel).
madre(marta, jonas).
padre(camilo, jonas).
padre(jose, alberto).
madre(luisa, alberto).
hermanos(X, Y) :- padre(Z,X), padre(Z,Y).
hermanos(X, Y) :- madre(Z,X), madre(Z,Y).
