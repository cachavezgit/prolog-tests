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

---

## Materia: Razonamiento y Representación del Conocimiento (UAG)

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
