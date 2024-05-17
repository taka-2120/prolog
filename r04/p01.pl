pos_neg([], [], []).
pos_neg([X|X1], [X|PL], NL) :- X > 0, pos_neg(X1, PL, NL).
pos_neg([X|X1], PL, [X|NL]) :- X < 0, pos_neg(X1, PL, NL).
pos_neg([_|X1], PL, NL) :- pos_neg(X1, PL, NL).