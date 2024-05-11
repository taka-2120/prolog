del_element(_, [], []).
del_element(I, [H|L1], [H|L2]) :- I \= H, del_element(I, L1, L2).
del_element(I, [_|L1], L2) :- del_element(I, L1, L2).