attendants([], []).
attendants([(N, _)|T1], [N|T2]) :- attendants(T1, T2).

test(NL) :- attendants([(ann, 80), (bob, 40), (jim, 20), (liz, 16), (tom, 65)], NL).