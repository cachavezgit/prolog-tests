:- ensure_loaded(library(lists)).
ordenar(X, [A,B,C]) :-
    member(A,X), member(B,X), member(C,X),
    A =\= B, A=\= C, B =\= C,
    A < B, 
    B < C.

