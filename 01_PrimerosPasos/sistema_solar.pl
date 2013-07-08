%Primer ejemplo en Prolog
%Corresponde al silogismo
%   Todos los planetas son redondos
%   La tierra es un planeta
%   Ergo, la tierra es redonda
redondo(X) :- planeta(X).
planeta(mercurio).
planeta(venus).
planeta(tierra).
planeta(marte).
planeta(jupiter).
planeta(saturno).
planeta(urano).
planeta(neptuno).
planeta(pluton).
estrella(sol).
orbita(luna, tierra).
orbita(gamenyde, jupiter).


