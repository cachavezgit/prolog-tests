% === Hechos: estados del semaforo ===
semaforo(rojo).
semaforo(verde).
semaforo(amarillo).

% === Reglas de clasificación ===
% Siga: semaforo en verde
semaforo(Estado, avance) :- semaforo(Estado), Estado = verde.

% Precaución: semaforo en amarillo
semaforo(Estado, precaucion) :- semaforo(Estado), Estado = amarillo.

% Alto: semaforo en rojo
semaforo(Estado, alto) :- semaforo(Estado), Estado = rojo.