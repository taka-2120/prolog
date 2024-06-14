edge(s, a).
edge(s, b).
edge(a, c).
edge(a, d).
edge(b, e).
edge(b, g).
edge(c, b).
edge(d, g).
edge(e, g).

start(s).
goal(g).

connected(A, B).
connected(A, B) :- edge(A, C), connected(C, B).

exist_path(S, G) :- start(S), goal(G), connected(S, G).