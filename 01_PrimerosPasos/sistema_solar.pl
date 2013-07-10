% Ejemplo en Prolog, extendemos planetas.pl 
% sin incluir los planetas enanos y sus lunas
% para que todo siga siendo redondo :)

% Hechos 
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

%
orbita(luna, tierra).
orbita(deimos, marte).
orbita(phobos, marte).
% De las 63 lunas de Júpiter vamos a tener en cuenta sólo las 
% descubiertas por Galileo sólo por brevedad
orbita(callisto, jupiter).
orbita(europa, jupiter).
orbita(ganymede, jupiter).
orbita(io, jupiter).
%De las 62 de saturno las primeras que se conocieron
orbita(dione, saturno).
orbita(enceladus, saturno).
orbita(hyperion, saturno).
orbita(iapetus, saturno).
orbita(mimas, saturno).
orbita(phoebe, saturno).
orbita(rhea, saturno).
orbita(tethys, saturno).
orbita(titan, saturno).
%De las 27 de urano y las 13 de neptuno sólo las clasicas 
%antes de los telescpios electronicos y el voyager 2
orbita(ariel, urano).
orbita(umbriel, urano).
orbita(triton, neptuno).


orbita(Planeta,sol):-planeta(Planeta).
satelite(X):-planeta(Planeta),orbita(X,Planeta).

redondo(X) :- planeta(X).
redondo(X) :- satelite(X).

% como suponemos que todo es redondo podemos hacer
% redondo(_).

