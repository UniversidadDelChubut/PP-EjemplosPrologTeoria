%Ejemplo completo segun apuntes
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
se_aman(X, Y) :- ama_a(X,Y), ama_a(Y,X).
son_felices(X,Y):- se_aman(X,Y).
los_senialan_con_el_dedo(X,Y) :- se_aman(X,Y), hombre(X), hombre(Y).
los_senialan_con_el_dedo(X,Y) :- se_aman(X,Y), mujer(X), mujer(Y).
