velocidad(ford, 100).
velocidad(vw, 120).
velocidad(fiat, 105).
tiempo(ford, 8).
tiempo(vw, 5).
tiempo(fiat, 10).
distancia(X, Y) :- velocidad(X, Velocidad), 
                   tiempo(X, Tiempo), 
                   Y is Velocidad * Tiempo.
