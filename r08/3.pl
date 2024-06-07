failures([], 0).
failures([(E, M)|T1], N) :- (E < 60; M < 60), failures(T1, N1), N is N1 + 1.
failures([_|T1], N) :- failures(T1, N).

test(N) :- failures([(55, 80), (60, 60), (90, 20)], N).