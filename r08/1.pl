senior_attendants([], []).
senior_attendants([(N, A)|T1], [N|T2]) :- A >= 60, senior_attendants(T1, T2).
senior_attendants([_|T1], T2) :- senior_attendants(T1, T2).

test(NL) :- senior_attendants([(ann, 80), (bob, 40), (jim, 20), (liz, 16), (tom, 65)], NL).