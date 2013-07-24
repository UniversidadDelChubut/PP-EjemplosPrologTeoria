% tecnico(Nombre, Equipo, Anio, CantidadDeTitulos).
tecnico(tavarez, boca, 1992, 2).
tecnico(bianchi, velez, 1994, 2).
tecnico(bianchi, boca, 2000, 3).

% jugador(Nombre, Equipo, Anio, Goles).
jugador(riquelme, boca, 2000, 10).
jugador(palermo, boca, 2000, 19).
jugador(manteca_martinez, boca, 1992, 6).
jugador(chilavert, velez, 1994, 1).
jugador(trotta, velez, 1994, 2).

% Un técnico dirigió a un jugador si actuaron en el mismo equipo el mismo año
dirigio(Tecnico, Jugador) :- tecnico(Tecnico, Equipo, Anio,_), jugador(Jugador,Equipo,Anio,_).

% El jugador actuó en el equipo sin importar el año ni la cantidad de goles que metió
jugo_en(Jugador,Equipo) :-  jugador(Jugador,Equipo,_,_).
