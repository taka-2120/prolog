edge(s, a, 2).
edge(s, b, 3).
edge(a, c, 5).
edge(a, d, 4).
edge(b, e, 2).
edge(b, g, 0).
edge(c, g, 0).
edge(d, g, 0).
edge(e, g, 0).

min_node(Srt, C) :- findall(Cost, edge(Srt, _, Cost), CostList), min_member(MinCost, CostList), edge(Srt, C, MinCost).

path(A, A, [A]).
path(A, B, [A|T]) :- min_node(A, C), path(C, B, T).

hc(Path) :- path(s, g, Path).