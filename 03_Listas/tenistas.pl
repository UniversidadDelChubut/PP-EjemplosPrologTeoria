Enunciado:
Con un conjunto de datos dados como una lista de tenistas que participan de un torneo, donde cada tenista es se represnta con una lista que contiene (nombre, ranking, nacionalidad) escriba las consultas que:
- devuelva una lista con los nombres de los tenistas argentinos
- devuelva el nombre del numero uno del ranking
- devuelva la cantida de participantes del torneo.



Resolucion:
tenistas( [[delpotro,8,argentino], [federer, 2, suizo], [yojovick,1 ,croata], [nalbandian, 25,argentino]]).

iesimo(1, [C|_], C).
iesimo(N, [_|T], X) :- N1 is N -1, iesimo(N1,T,X).

uno(Nombre) :- tenistas(L), member(X,L), iesimo(2, X, 1), iesimo(1,X,Nombre).

todos(X) :- tenistas(L), member(X,L).

arg([],[]).
arg([HL|TL], [X|T]) :- iesimo(3, HL, argentino), iesimo(1, HL, X), arg(TL,T).
arg([_|TL],   T)  :- arg(TL,T).



