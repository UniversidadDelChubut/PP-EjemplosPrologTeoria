% Enunciado:
% Con un conjunto de datos dados como una lista de tenistas que participan 
% de un torneo, donde cada tenista es se represnta con una lista que 
% contiene (nombre, ranking, nacionalidad) escriba las consultas que:
%  - devuelva una lista con los nombres de los tenistas argentinos
%  - devuelva el nombre del numero uno del ranking
%  - devuelva la cantidad de participantes del torneo.

tenistas( [[delpotro,8,argentino], [federer, 2, suizo], [yojovick,1 ,croata], [nalbandian, 25,argentino]]).


uno(Nombre) :- tenistas(L), member(DatosTenista, L), DatosTenista = [Nombre, 1, _].

contar([], 0).
contar([H|T], Cant) :- contar(T, X), Cant is X + 1.
cantidad(Cantidad) :- tenistas(L), contar(L, Cantidad).

arg(Argentinos) :- tenistas(L), arg(L, Argentinos).
arg([],[]).
arg([HL|TL], [Nombre|T]) :- HL = [Nombre,_, argentino], arg(TL, T).
arg([HL|TL], T) :- HL = [_,_, Nacionalidad], Nacionalidad \= argentino, arg(TL, T).

