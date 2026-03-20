% PROYECTO: Tic Tac Toe en ASP

% Definicion del tablero
fila(1..3).
columna(1..3).
jugador(x).
jugador(o).

% Estado del tablero (ejemplo de partida)
% x | o | x
% o | x | o
% x | x | o
celda(1,1,x). celda(1,2,o). celda(1,3,x).
celda(2,1,x). celda(2,2,o). celda(2,3,o).
celda(3,1,o). celda(3,2,x). celda(3,3,x).


% Gana por fila
gana(J) :- jugador(J), fila(F),
           celda(F,1,J), celda(F,2,J), celda(F,3,J).

% Gana por columna
gana(J) :- jugador(J), columna(C),
           celda(1,C,J), celda(2,C,J), celda(3,C,J).

% Gana por diagonal principal
gana(J) :- jugador(J),
           celda(1,1,J), celda(2,2,J), celda(3,3,J).

% Gana por diagonal secundaria
gana(J) :- jugador(J),
           celda(1,3,J), celda(2,2,J), celda(3,1,J).

% Empate
empate :- not gana(x), not gana(o).

#show celda/3.
#show gana/1.
#show empate/0.