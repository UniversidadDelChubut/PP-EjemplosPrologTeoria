% Enunciado:
% Con un conjunto de datos dados como una lista de tenistas que participan 
% de un torneo, donde cada tenista es se represnta con una lista que 
% contiene (nombre, ranking, nacionalidad) escriba las consultas que:
%  - devuelva el nombre del numero uno del ranking
%  - devuelva la cantidad de participantes del torneo.
%  - devuelva una lista con los nombres de los tenistas argentinos

% La Base de Conocimiento está dada como una lista de listas 
tenistas( [[delpotro,8,argentino], [federer, 2, suizo], [yojovick,1 ,croata], [nalbandian, 25,argentino]]).

% El número uno de ranking
uno(Nombre) :- tenistas(L), member(DatosTenista, L), DatosTenista = [Nombre, 1, _].

% La cantidad de participantes se obtiene contando la 
% cantidad de elelemntos del arreglo 
cantidad(Cantidad) :- tenistas(L), contar(L, Cantidad).
contar([], 0).
contar([_|T], Cant) :- contar(T, X), Cant is X + 1.

% Se arma una lista con los nombres de los tenistas argentinos
arg(Argentinos) :- tenistas(L), arg(L, Argentinos).
arg([],[]).
arg([HL|TL], [Nombre|T]) :- HL = [Nombre,_, argentino], arg(TL, T).
arg([HL|TL], T) :- HL = [_,_, Nacionalidad], Nacionalidad \= argentino, arg(TL, T).

