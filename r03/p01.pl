double_num([], []).
double_num([X|X1], [Y|Y1]) :- Y is X * 2, double_num(X1, Y1).