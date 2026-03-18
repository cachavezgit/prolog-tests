% --- Hechos ---
entrada(ensalada).
entrada(sopa).
carne(filete).
carne(pollo).
postre(helado).
postre(fruta).

calorias(ensalada, 150).
calorias(sopa, 300).
calorias(filete, 700).
calorias(pollo, 400).
calorias(helado, 500).
calorias(fruta, 100).

% --- Reglas ---
% 1. Combinar entrada, carne y postre
menu_completo(E, C, P) :-
    entrada(E),
    carne(C),
    postre(P).

% 2. Menú con restricción de calorías (< 1000)
menu_dieta(E, C, P) :-
    entrada(E),
    carne(C),
    postre(P),
    calorias(E, CalE),
    calorias(C, CalC),
    calorias(P, CalP),
    Total is CalE + CalC + CalP,
    Total < 1000.

% menu_personalizado(Entrada, Carne, Postre, LimiteMax)
menu_personalizado(E, C, P, LimiteMax) :-
    entrada(E),
    carne(C),
    postre(P),
    calorias(E, CalE),
    calorias(C, CalC),
    calorias(P, CalP),
    Total is CalE + CalC + CalP,
    Total < LimiteMax. % Aquí usamos la variable de entrada