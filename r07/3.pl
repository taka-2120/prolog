n_of_f(a, 0).
n_of_f(b, 0).
n_of_f(0, 0).
n_of_f(1, 0).
n_of_f(f(T), N) :- n_of_f(T, N1), N is N1 + 1.
n_of_f(g(L, R), N) :- n_of_f(L, N1), n_of_f(R, N2), N is N1 + N2.

test(N) :- n_of_f(g(a, g(f(0), 1)), N).