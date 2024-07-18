% -----
% r9(6)
% -----
% edge(s, a, 2).
% edge(s, b, 3).
% edge(a, c, 5).
% edge(a, d, 4).
% edge(b, e, 2).
% edge(b, g, 0).
% edge(c, g, 0).
% edge(d, g, 0).
% edge(e, g, 0).

% min_node(Srt, C) :- findall(Cost, edge(Srt, _, Cost), CostList), min_member(MinCost, CostList), edge(Srt, C, MinCost).

% path(A, A, [A]).
% path(A, B, [A|T]) :- min_node(A, C), path(C, B, T).

% hc(Path) :- path(s, g, Path).


a([(2,3),(1,3),(2,2),(3,3),(3,2),(3,1),(2,1),(1,1),(1,2)]).
c([(2,2),(1,3),(3,2),(2,3),(3,3),(3,1),(2,1),(1,1),(1,2)]).
goal([(2,2),(1,3),(2,3),(3,3),(3,2),(3,1),(2,1),(1,1),(1,2)]).


swap(E, T, [E | L1], [T | L1]).
swap(E, T, [T | L1], [E | L1]).
swap(E, T, [H | L1], [H | L2]) :- swap(E, T, L1, L2).
edge([E | S1], [T | S2]) :- swap(E, T, S1, S2).

ts(T, L2) :- swap((2,3),T,[(1,3),(2,2),(3,3),(3,2),(3,1),(2,1),(1,1),(1,2)],L2).
te :- edge([(2,3),(1,3),(2,2),(3,3),(3,2),(3,1),(2,1),(1,1),(1,2)], S2), write(S2).

min_node(Srt, C) :- findall(Cost, edge(Srt, _, Cost), CostList), min_member(MinCost, CostList), edge(Srt, C, MinCost).

path(A, A, [A]).
path(A, B, [A|T]) :- min_node(A, C), path(C, B, T).



hc_puzzle(Path) :- path(s, g, Path).