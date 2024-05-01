even_list([], []).
even_list([X|X1], [X|Y1]) :- 0 is mod(X, 2), even_list(X1, Y1).
even_list([_|X1], Y) :- even_list(X1, Y).