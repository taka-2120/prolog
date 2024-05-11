n_elements([], 0, []).
n_elements([H|L1], N, [H|L2]) :- N \= 0, N1 is N - 1, n_elements(L1, N1, L2).
n_elements([_|L1], N, L2) :- n_elements(L1, N, L2).