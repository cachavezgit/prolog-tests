#const n=20.
compuesto(N) :- N=1..n, I=2..N-1, N\I=0.
prime(N) :- N=2..n, not compuesto(N).
#show primo/1.
