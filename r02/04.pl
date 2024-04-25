ssum(1, 0).
ssum(N, M) :- N1 is N - 1, ssum(N1, M1), M is N * N1 + M1.