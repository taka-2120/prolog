english_better([], 0).
english_better([(E, M)|T1], N) :- E >= M, english_better(T1, N1), N is N1 + 1.
english_better([_|T1], N) :- english_better(T1, N).

test(N) :- english_better([(55, 80), (60, 60), (90, 20)], N).