edge(s, a).
edge(s, b).
edge(a, c).
edge(a, d).
edge(b, e).
edge(b, g).
edge(c, g).
edge(d, g).
edge(e, g).

start(s).
goal(g).

path(A, A, [A]).
path(A, B, [A|T]) :- edge(A, C), path(C, B, T).

dfs(Path) :- path(s, g, Path).