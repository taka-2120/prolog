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

path(_, B, [B]).
path(A, B, [A|T]) :- edge(A, C), path(C, B, T).