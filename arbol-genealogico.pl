% === Hechos: Relaciones directas ===
padre(juan, maria).
padre(juan, pablo).
padre(pablo, luis).
padre(pablo, ana).


% === Reglas de clasificación ===
% Para que X sea hermano de Y, ambos deben compartir el mismo padre. 
% Además, debemos añadir una condición para que Prolog no nos diga 
% que alguien es hermano de sí mismo.

hermano(X, Y) :- 
    padre(P, X), 
    padre(P, Y), 
    X \= Y. % X debe ser diferente de Y

% Esta es una regla de "salto". X es abuelo de Y si X es padre de alguien (Z) 
% y ese alguien (Z) es padre de Y.

abuelo(X, Y) :- 
    padre(X, Z), 
    padre(Z, Y).

