#const n=5.
fac(0,1).
fac(N+1, F*(N+1)) :- fac(N,F), N<n.
fac(F) :- fac(_,F).
#show fac/1.
