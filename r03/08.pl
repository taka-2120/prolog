prefix([], _).
prefix([H|T], [H1|T1]) :- H == H1, prefix(T, T1).