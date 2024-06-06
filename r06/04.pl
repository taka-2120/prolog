n_functors(a, 0).
n_functors(b, 0).
n_functors(0, 0).
n_functors(1, 0).
n_functors(f(T), X) :- n_functors(T, X1), X is X1 + 1.
n_functors(g(L, R), X) :- n_functors(L, X1), n_functors(R, X2), X is X1 + X2.

test(X) :- n_functors(f(g(a, f(b))), X).