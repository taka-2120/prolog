divide_by_three([], [], []).
divide_by_three([H|L1], [H|L2], L3) :- 0 is mod(H, 3), divide_by_three(L1, L2, L3).
divide_by_three([H|L1], L2, [H|L3]) :- divide_by_three(L1, L2, L3).

do(X, Y) :- divide_by_three([1, 2, 3, 4, 5, 6], X, Y).