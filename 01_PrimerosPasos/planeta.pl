%Primer ejemplo en Prolog
%Corresponde al silogismo
%   Todos los planetas son redondos
%   La tierra es un planeta
%   Ergo, la tierra es redonda

redondo(X) :- planeta(X).
planeta(tierra).

%Sobre esta simple base de conocimiento podemos preguntar
%
% ¿La tierra es redonda?
% ?- redondo(tierra).
%
% ¿Júpiter es redondo?
% ?- redondo(jupiter).
%
% ¿Quienes son redondos?
% ?- redondo(X).
%
% ¿Hay algo redondo? 
% ?- redondo(_).
