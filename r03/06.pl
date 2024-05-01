exp(_, 0, 1).
exp(N, M, X) :- M1 is M - 1, exp(N, M1, X1), X is X1 * N.