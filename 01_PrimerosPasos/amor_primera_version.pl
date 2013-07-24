/**********
 * Hechos *
 **********/
mujer(luisa).    % Luisa es mujer. Propiedad del objeto Luisa.
mujer(susana).   % Susana es mujer. Propiedad del objeto Susana.
hombre(alberto). % Alberto es hombre. Propiedad del objeto Alberto.
ama_a(luisa,alberto). %Luisa ama a Alberto. Relacion entre los objetos Luisa y Alberto.

/**********
 * Reglas *
 **********/
% Sos personas se aman si una ama a l aotra y viceversa. 
se_aman(A, B) :- ama_a(A, B), ama_a(B, A). 

