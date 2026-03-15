% === Hechos: temperaturas de las ciudades ===
temperatura(cd_mx, 24).
temperatura(puebla, 24).
temperatura(leon, 25).
temperatura(san_luis_potosi, 27).
temperatura(aguascalientes, 25).
temperatura(guadalajara, 25).
temperatura(monterrey, 36).
temperatura(ciudad_juarez, 29).

% === Reglas de clasificación ===
% Templado: temperatura menor a 25°C
clima(Ciudad, templado) :- temperatura(Ciudad, T), T < 25.

% Cálido: temperatura mayor a 25°C
clima(Ciudad, calido) :- temperatura(Ciudad, T), T > 25.

% === Mostrar resultados ===
mostrar :-
    temperatura(Ciudad, _),
    clima(Ciudad, Tipo),
    format("~w: ~w~n", [Ciudad, Tipo]),
    fail.
mostrar.