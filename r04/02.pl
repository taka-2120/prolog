mid([], _, _, []).
mid([H|L1], Min, Max, [H|L2]) :- Min =< H, H =< Max, mid(L1, Min, Max, L2).
mid([_|L1], Min, Max, L2) :- mid(L1, Min, Max, L2).