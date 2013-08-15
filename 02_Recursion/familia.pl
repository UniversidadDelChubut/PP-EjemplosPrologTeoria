padre(oscar, gustavo).
madre(adela, gustavo).
padre(oscar, juana).
madre(adela, juana).
padre(gustavo, teresa).
madre(sandra, teresa).
padre(jose, ana).
madre(camila, ana).
padre(jose, pedro).
madre(juana, pedro).
padre(luis, alberto).
madre(juana, alberto).
padre(luis, damian).
madre(juana, damian).
padre(guillermo, ulises).
madre(teresa, ulises).
padre(guillermo, natalia).
madre(teresa, natalia).

% Dos personas son hermanos si comparten padre o madre
hermano(X,Y) :- madre(U,X), madre(U,Y), X \= Y.
hermano(X,Y) :- padre(U,X), padre(U,Y), X \= Y.

% Padre/Madre e hijo
hijo(X,Y) :- padre(Y,X).
hijo(X,Y) :- madre(Y,X).

% progenitor indica padre o madre
progenitor(X,Y):-padre(X,Y).
progenitor(X,Y):-madre(X,Y).

% dos personas son primos si alguno de sus respectivos
% progenitores son hermanos
primo(X,Y) :- progenitor(PX,X), progenitor(PY,Y), hermano(PX,PY).

% el abuelo es padre/madre de su padre/madre
abuelo(X,Y):-progenitor(X,Z), progenitor(Z,Y).

% esta regla recursiva determina si X es uni ascendente o
% antepasado de Y
ancestro(X,Y):-progenitor(X,Y).
ancestro(X,Y):-progenitor(X,Z), ancestro(Z,Y).

% ¿Cómo se puede reescribir hermano usando progenitor/2?
% Escriba el predicado familiar/2
