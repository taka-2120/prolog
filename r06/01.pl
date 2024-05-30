subst_atom(A, B, A, B).
subst_atom(A, B, g(A, T), g(B, T)).
subst_atom(A, B, f(T1), f(T2)) :- subst_atom(A, B, T1, T2).
subst_atom(A, B, g(_, T1), g(_, T2)) :- subst_atom(A, B, T1, T2).

test(X) :- subst_atom(a, g(b, b), g(a, f(1)), X).