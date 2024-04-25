pow(0, 1).
pow(X, Y) :- X1 is X - 1, pow(X1, Y1), Y is Y1 * 2.