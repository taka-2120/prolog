edge(a, b).
edge(b, c).
edge(b, d).
edge(c, e).
edge(d, e).
edge(f, g).

connected(X, Y) :- edge(X, Y).
connected(X, Y) :- edge(X, Z), connected(Z, Y).
