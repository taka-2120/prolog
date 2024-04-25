a(0, 5).
a(N, M) :- N1 is N - 1, a(N1, M1), M is 2 * M1 + 3.