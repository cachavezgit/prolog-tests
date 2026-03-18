parent(X,Y) :- father(X,Y).
parent(X,Y) :- mother(X,Y).
father(juan, maria).
mother(pedro, ana).
#show parent/2.
