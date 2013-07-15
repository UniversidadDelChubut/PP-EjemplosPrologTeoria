tecnico(tavarez, boca, 1992, 2).
tecnico(bianchi, velez, 1994, 2).
tecnico(bianchi, boca, 2000, 3).
jugador(riquelme, boca, 2000, 10).
jugador(palermo, boca, 2000, 19).
jugador(manteca_martinez, boca, 1992, 6).
jugador(chilavert, velez, 1994, 1).
jugador(trotta, velez, 1994, 2).
dirigio(Tecnico, Jugador) :- tecnico(Tecnico, Equipo, Anio,_), jugador(Jugador,Equipo,Anio,_).
jugo_en(Jugador,Equipo) :-  jugador(Jugador,Equipo,_,_).
