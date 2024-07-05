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

path(A, A, Z, Z).
path(A, B, Path, Z) :- edge(A, C), path(C, B, Path, [C|Z]).

dfs2(Path) :- path(s, g, Path, [s]).
dfs2_list(L) :- setof(Path, dfs2(Path), L).