edge(s, a).
edge(s, b).
edge(a, c).
edge(a, e).
edge(b, d).
edge(c, e).
edge(c, d).
edge(d, f).
edge(f, c).
edge(f, g).
edge(e, g).
edge(f, h).
edge(h, g).

start(s).
goal(g).

path(A, A, Z, Z).
path(A, B, Path, Z) :- edge(A, C), not(member(C, Z)), path(C, B, Path, [C|Z]).

dfs_loop(Path) :- path(s, g, Path, [s]).
dfs_loop_list(L) :- setof(Path, dfs_loop(Path), L).