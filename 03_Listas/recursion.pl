long([], 0).
long([_|T], Long) :- long(T, X), Long is X + 1.

sum([], 0).
sum([H|T], Suma) :- sum(T, X), Suma is X + H.

enesimo(1,[H|_],H).
enesimo(N,[_|T],V) :- N1 is N -1, enesimo(N1, T, V).


concat_lists([], List, List).
concat_lists([Elem|List1], List2, [Elem|List3]) :- 
                                        concat_lists(List1, List2, List3).
