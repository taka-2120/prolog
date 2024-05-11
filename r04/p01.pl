pos_neg([], [], []).
pos_neg([H|T], PL, [H|NL]) :- H < 0, pos_neg(T, PL, NL).
pos_neg([H|T], [H|PL], NL) :- H > 0, pos_neg(T, PL, NL).
pos_neg([_|T], PL, NL) :- pos_neg(T, PL, NL).