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

path(_, _, A, A, Z, Z).
path(MaxDepth, Count, A, B, Path, Z) :- Count1 is Count + 1, Count1 =< MaxDepth, edge(A, C), path(MaxDepth, Count1, C, B, Path, [C|Z]).

dfs_bound(MaxDepth, Path) :- path(MaxDepth, 0, s, g, Path, [s]).
dfs_bound_list(MaxDepth, L) :- setof(Path, dfs_bound(MaxDepth, Path), L).