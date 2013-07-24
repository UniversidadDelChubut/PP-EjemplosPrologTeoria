% Longitud de la lista
long([], 0).
long([_|T], Long) :- long(T, X), Long is X + 1.

% Suma todos los elementos de la lista
sum([], 0).
sum([H|T], Suma) :- sum(T, X), Suma is X + H.

% Obtiene el elemento de la lista que está en la posición especificada
enesimo(1,[H|_],H).
enesimo(N,[_|T],V) :- N1 is N -1, enesimo(N1, T, V).

% Concatenación de listas
concat_lists([], List, List).
concat_lists([Elem|List1], List2, [Elem|List3]) :- 
                                        concat_lists(List1, List2, List3).

% Probar con:
% ?- concat_lists([1,2,3],[4,5,6]).
% ?- concat_lists([],[a,b,c]).
% ?- concat_lists(L1 , L2, [1, 2, 3]).
