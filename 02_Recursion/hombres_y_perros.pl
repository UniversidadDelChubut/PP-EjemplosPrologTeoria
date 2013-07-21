% Para ejemplificar el proceso de inferencia
% se realiza la consulta:
% -? mortal(socrates)
hombre(cantinflas).
hombre(socrates).
perro(bobby).
perro(terry).
mortal(X) :- perro(X).
mortal(X) :- hombre(X).
% Probar con la opción trace de swipl
