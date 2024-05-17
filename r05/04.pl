del_duplication([], []).
del_duplication([H1|L1], L2) :- member(H1, L1), del_duplication(L1, L2).
del_duplication([H|L1], [H|L2]) :- del_duplication(L1, L2).