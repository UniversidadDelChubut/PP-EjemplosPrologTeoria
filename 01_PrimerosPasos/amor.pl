% Ejemplo completo segun apuntes

% ------- Hechos -------
mujer(luisa).
mujer(susana).
mujer(ana).
mujer(maria).
hombre(alberto).
hombre(guido).
hombre(ernesto).
hombre(roberto).
ama_a(luisa,alberto).
ama_a(alberto,susana).
ama_a(susana,alberto).
ama_a(guido,ernesto).
ama_a(ernesto,guido).

% ------- Reglas -------

% El amor mutuo
se_aman(X, Y) :- ama_a(X,Y), ama_a(Y,X).

% El amor mutuo es motivo de felicidad
son_felices(X,Y):- se_aman(X,Y).

% Las parejas del mismo sexo no son aceptadas por algunas personas
los_senialan_con_el_dedo(X,Y) :- se_aman(X,Y), hombre(X), hombre(Y).
los_senialan_con_el_dedo(X,Y) :- se_aman(X,Y), mujer(X), mujer(Y).

% Alguien en el mundo piensa en ti
es_amado(X) :- ama_a(_,X).
