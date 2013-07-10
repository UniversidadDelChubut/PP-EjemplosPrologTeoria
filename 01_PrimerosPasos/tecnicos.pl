tecnico(tavarez, boca, 1990).
tecnico(bianchi, velez, 1994).
tecnico(bianchi, boca, 2000).
jugador(riquelme, boca, 2000).
jugador(latorre, boca, 1990).
jugador(chilavert, velez, 1994).
jugador(trotta, velez, 1994).
dirigio(Tecnico, Jugador) :- tecnico(Tecnico, Equipo, Anio), jugador(Jugador,Equipo,Anio).
