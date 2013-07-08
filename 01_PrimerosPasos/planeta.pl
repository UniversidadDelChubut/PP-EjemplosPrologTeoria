%Primer ejemplo en Prolog
%Corresponde al silogismo
%   Todos los planetas son redondos
%   La tierra es un planeta
%   Ergo, la tierra es redonda
redondo(X) :- planeta(X).
planeta(tierra).
