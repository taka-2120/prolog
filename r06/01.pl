subst_atom(A, B, A, B).
subst_atom(A, B, f(T1), f(T2)) :- subst_atom(A, B, T1, T2).
subst_atom(A, B, g(L1, R1), g(L2, R2)) :- subst_atom(A, B, L1, L2), subst_atom(A, B, R1, R2).
subst_atom(_, _, T1, T1).

test(X) :- subst_atom(a, g(b, b), g(a, f(1)), X).