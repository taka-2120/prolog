n_of_f(a, 0).
n_of_f(b, 0).
n_of_f(0, 0).
n_of_f(1, 0).
n_of_f(f(T), N) :- n_of_f(T, N1), N is N1 + 1.
n_of_f(g(L, R), N) :- n_of_f(L, N1), n_of_f(R, N2), N is N1 + N2.

n_of_g(a, 0).
n_of_g(b, 0).
n_of_g(0, 0).
n_of_g(1, 0).
n_of_g(f(T), N) :- n_of_g(T, N).
n_of_g(g(L, R), N) :- n_of_g(L, N1), n_of_g(R, N2), N is N1 + N2 + 1.

compare_fnumbers(T, same) :- n_of_f(T, F), n_of_g(T, G), F == G.
compare_fnumbers(T, f) :- n_of_f(T, F), n_of_g(T, G), F > G.
compare_fnumbers(_, g).

test(F) :- compare_fnumbers(g(a, g(f(0), 1)), F).