classify([], [], [], []).
classify([(N, A)|T1], [(N, A)|T2], T3, T4) :- A >= 60, classify(T1, T2, T3, T4).
classify([(N, A)|T1], T2, T3, [(N, A)|T4]) :- A < 20, classify(T1, T2, T3, T4).
classify([(N, A)|T1], T2, [(N, A)|T3], T4) :- classify(T1, T2, T3, T4).

test(S, A, J) :- classify([(ann, 80), (bob, 40), (jim, 20), (liz, 16), (tom, 65)], S, A, J).