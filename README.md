# Materia: Razonamiento y Representación del Conocimiento (UAG)

Los ejercicios de la materia se encuentran en la carpeta:

```
ejercicios-uag-ryr-del-conocimiento/
```

### ejercicio1.pl — Clasificación de clima por temperatura

Clasifica ciudades mexicanas según su temperatura en `templado` o `calido`.

```bash
swipl ejercicios-uag-ryr-del-conocimiento/ejercicio1.pl
```

```prolog
?- mostrar.
?- clima(monterrey, X).
```

### ejercicio2.pl — Relaciones padre e hijo

Define una familia de tres generaciones (ana, juan, karina, dany) y deduce la relación `hijo/2` a partir de los hechos `padre/2`.

```bash
swipl ejercicios-uag-ryr-del-conocimiento/ejercicio2.pl
```

```prolog
?- hijo(karina, X).
?- padre(juan, X).
```

### ejercicio3.pl — Generación de pares con rangos

Define el predicado `p(M, N)` donde `N` está en el rango `1..4` y cumple `N = 2*M`. Explora el uso de rangos numéricos para generar soluciones.

```bash
swipl ejercicios-uag-ryr-del-conocimiento/ejercicio3.pl
```

```prolog
?- p(M, N).
```

### ejercicio4.pl — Potencias de -1

Genera pares `(N, M)` donde `N` va de `0` a `4` y `M = (-1)^N`, produciendo la secuencia alternada `1, -1, 1, -1, 1`.

```bash
swipl ejercicios-uag-ryr-del-conocimiento/ejercicio4.pl
```

```prolog
?- p(N, M).
```

### ejercicio5.pl — Fórmula cuadrática N²+N+41

Genera pares `(N, M)` donde `N` va de `0` a `10` y `M = N²+N+41`, una fórmula clásica que produce números primos para valores pequeños de N.

```bash
swipl ejercicios-uag-ryr-del-conocimiento/ejercicio5.pl
```

```prolog
?- p(N, M).
```

### ejercicio6.pl — Relaciones padre y madre (ASP)

Define la relación `parent/2` a partir de `father/2` y `mother/2`. Usa sintaxis de Answer Set Programming con `#show`.

> Requiere `clingo`, no `swipl`. Instalación en macOS: `brew install clingo`

```bash
clingo ejercicios-uag-ryr-del-conocimiento/ejercicio6.pl
```

### ejercicio7.pl — Números primos con ASP

Determina los números primos del 2 al 20 descartando los compuestos. Usa `#const` y `not` para razonamiento por defecto.

> Requiere `clingo`, no `swipl`.

```bash
clingo ejercicios-uag-ryr-del-conocimiento/ejercicio7.pl
```

### ejercicio8.pl — Factorial con ASP

Calcula los factoriales de 0 a 5 usando una regla recursiva en ASP. Define `fac/2` con caso base `fac(0,1)` y caso inductivo, luego expone los resultados con `fac/1`.

> Requiere `clingo`, no `swipl`.

```bash
clingo ejercicios-uag-ryr-del-conocimiento/ejercicio8.pl
```

### ejercicio9a.pl — Regla de elección en ASP

Ilustra el uso de reglas de elección (`choice rules`) en ASP. La regla `1 {p(1..10)}.` genera todos los subconjuntos de `{1..10}` que contienen al menos un elemento.

> Requiere `clingo`, no `swipl`.

```bash
clingo ejercicios-uag-ryr-del-conocimiento/ejercicio9a.pl
```

### ejercicio9b.pl — Elección exacta de candidatos con ASP

Usa una regla de cardinalidad exacta para seleccionar exactamente 3 candidatos de entre 6 posibles (ann, bob, carol, dan, elaine, fred). Genera todos los conjuntos ganadores posibles de tamaño 3.

> Requiere `clingo`, no `swipl`.

```bash
clingo ejercicios-uag-ryr-del-conocimiento/ejercicio9b.pl
```

### ejercicio10a.pl — Restricciones de cardinalidad exacta en ASP

Demuestra el uso de restricciones de cardinalidad exacta (`= 1`) sobre conjuntos de átomos. Las reglas `{p; q} = 1` y `{q; r} = 1` exigen que exactamente uno de cada par sea verdadero, generando los modelos estables que satisfacen ambas condiciones simultáneamente.

> Requiere `clingo`, no `swipl`.

```bash
clingo ejercicios-uag-ryr-del-conocimiento/ejercicio10a.pl
```

### ejercicio10b.pl — Reglas de integridad con restricción negativa en ASP

Combina una regla de elección `{p(a); q(b)}` con una restricción de integridad `:- not p(a), not q(b)`. Esto garantiza que al menos uno de los dos átomos sea verdadero en todo modelo estable, descartando el modelo vacío.

> Requiere `clingo`, no `swipl`.

```bash
clingo ejercicios-uag-ryr-del-conocimiento/ejercicio10b.pl
```

### ejercicio11a.pl — Filtrado de pares con restricción de integridad en ASP

Genera subconjuntos de `{1..10}` mediante una regla de elección y descarta con `:- p(2*X)` todo modelo que contenga algún número par. El resultado son únicamente subconjuntos formados por números impares del rango.

> Requiere `clingo`, no `swipl`.

```bash
clingo ejercicios-uag-ryr-del-conocimiento/ejercicio11a.pl
```

### ejercicio11b.pl — Negación por defecto sobre predicados con aridad mixta en ASP

Define el hecho `p(1,1)` y deriva `q(X)` para `X` en `{1, 2}` cuando no existe ningún par `p(X, _)`. Como `p(1,1)` existe, `q(1)` no se infiere; al no haber ningún `p(2,_)`, sí se infiere `q(2)`. Ilustra el uso de `not` con predicados de distinta aridad.

> Requiere `clingo`, no `swipl`.

```bash
clingo ejercicios-uag-ryr-del-conocimiento/ejercicio11b.pl
```

### gato.pl — Tic Tac Toe con ASP

Implementa la lógica de un tablero de Gato (Tic Tac Toe) 3×3 en ASP. Define un estado de partida fijo en `celda/3` y determina el ganador evaluando filas, columnas y diagonales. Si ningún jugador gana, infiere `empate` mediante negación por defecto.

> Requiere `clingo`, no `swipl`.

```bash
clingo ejercicios-uag-ryr-del-conocimiento/gato.pl
```

# Prolog Tests

Colección de ejercicios y ejemplos en Prolog.

## Requisitos

- [SWI-Prolog](https://www.swi-prolog.org/) instalado
- Instalación en macOS: `brew install swi-prolog`

## Cómo ejecutar un archivo

```bash
swipl <archivo>.pl
```

Dentro del intérprete, escribe tu consulta y presiona Enter:

```prolog
?- mi_consulta(X).
```

Para salir:

```prolog
?- halt.
```

También puedes ejecutar una consulta directamente desde la terminal sin entrar al intérprete:

```bash
swipl -g "mi_consulta(X), write(X), nl, halt" <archivo>.pl
```

---

## Ejemplos en la raíz del proyecto

### semaforo.pl

Clasifica el estado de un semáforo (rojo, verde, amarillo) en una acción (alto, avance, precaución).

```bash
swipl semaforo.pl
```

```prolog
?- mostrar.
?- semaforo(rojo, X).
```

### ordenar3nums.pl

Ordena 3 números de forma ascendente.

```bash
swipl ordenar3nums.pl
```

```prolog
?- ordenar([3,1,2], X).
```

# Ejercicio de Prolog: Árbol Genealógico

Este documento contiene la base de conocimientos y las consultas de prueba para el sistema de lógica de árbol genealógico.


# Documentación: Sistema de Árbol Genealógico en Prolog

Este documento describe la implementación de una base de conocimientos lógica para representar relaciones familiares y reglas de inferencia.

---

## 1. Estructura de Datos (Hechos)

La base de datos utiliza el predicado `padre/2` donde el primer argumento es el progenitor y el segundo el descendiente.

| Relación               | Significado             |
| :---------------------- | :---------------------- |
| `padre(juan, maria).` | Juan es padre de María |
| `padre(juan, pablo).` | Juan es padre de Pablo  |
| `padre(pablo, ana).`  | Pablo es padre de Ana   |
| `padre(pablo, luis).` | Pablo es padre de Luis  |

---

## 2. Reglas de Inferencia (Lógica)

Estas reglas permiten al motor de Prolog deducir relaciones implícitas mediante la unificación de variables.

### Hermandad

Determina si dos individuos comparten el mismo progenitor.

```prolog
hermano(X, Y) :- 
    padre(P, X), 
    padre(P, Y), 
    X \= Y.
```


# Guía de Consultas (Queries): Sistema Genealógico

Esta sección describe cómo interrogar a la base de conocimientos de Prolog para extraer información sobre el árbol familiar.

## 1. Consultas de Relación Directa (Hechos)

Estas consultas verifican o buscan datos existentes en los hechos `padre(Progenitor, Hijo)`.

* **Verificación de verdad:** ¿Es Juan padre de María?
  `?- padre(juan, maria).`*Resultado: true.*
* **Búsqueda de identidad:** ¿Quién es el padre de Ana?
  `?- padre(Padre, ana).`*Resultado: Padre = pablo.*
* **Búsqueda de múltiples resultados:** ¿Quiénes son los hijos de Juan?
  `?- padre(juan, Hijo).`
  *Resultado: Hijo = maria ; Hijo = pablo.* (Usa `;` para iterar).

---

## 2. Consultas de Inferencia (Reglas)

Consultas que utilizan la lógica de las reglas `hermano/2` y `abuelo/2`.

| Objetivo de la Consulta                      | Comando (Query)                |
| :------------------------------------------- | :----------------------------- |
| **Validar hermandad**                  | `?- hermano(maria, pablo).`  |
| **Listar hermanos de un individuo**    | `?- hermano(luis, Hermano).` |
| **Identificar al abuelo de alguien**   | `?- abuelo(Abuelo, ana).`    |
| **Encontrar todos los nietos de Juan** | `?- abuelo(juan, Nieto).`    |

---

## 3. Tips para el Uso de Queries

1. **Variables:** Cualquier palabra que empiece con **Mayúscula** es una incógnita que Prolog intentará resolver (ej. `X`, `Persona`, `Quien`).
2. **El Punto Final:** Todas las consultas deben terminar con un punto (`.`), de lo contrario, el intérprete esperará más instrucciones.
3. **Backtracking:** Si una consulta devuelve un resultado pero el cursor sigue activo, presiona `;` para que Prolog busque la siguiente solución válida en la base de datos.
