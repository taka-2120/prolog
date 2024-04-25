edge(a, b).
edge(b, c).
edge(b, d).
edge(c, e).
edge(d, e).
edge(f, g).

dist(N, M, L) :- edge(N, M), L is 1.
dist(N, M, L) :- edge(N, A), dist(A, M, L1), L is L1 + 1.
