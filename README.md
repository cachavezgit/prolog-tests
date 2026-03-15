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
