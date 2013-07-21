lista_uno([a]).
lista_dos([a, b]).
% consultar 
% ?- lista_uno([T|H]).
% ?- lista_dos([T|H]).

el_quinto_elemento(L, X) :- [_,_,_,_,X|_] = L.
el_tercer_elemento([_,_,X|_], X).

doble_anterior([_]).
doble_anterior([X, Y | T]) :- Y is X * 2, doble_anterior([Y|T]).

% poner ejercico es_fibonacci
