pow(_, 0, 1).
pow(N, X, Y) :- X1 is X - 1, pow(N, X1, Y1), Y is Y1 * N.