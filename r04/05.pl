rewrite_list(_, _, [], []).
rewrite_list(I, R, [H|L1], [R|L2]) :- I == H, rewrite_list(I, R, L1, L2).
rewrite_list(I, R, [H|L1], [H|L2]) :- rewrite_list(I, R, L1, L2).