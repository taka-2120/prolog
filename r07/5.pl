subst_atom(A, B, A, B).
subst_atom(A, B, f(T1), f(T2)) :- subst_atom(A, B, T1, T2).
subst_atom(A, B, g(L1, R1), g(L2, R2)) :- subst_atom(A, B, L1, L2), subst_atom(A, B, R1, R2).
subst_atom(_, _, T1, T1).

subst_ab(T1, T3) :- subst_atom(a, 0, T1, T2), subst_atom(b, 1, T2, T3).

test(T) :- subst_ab(g(g(0, a), f(g(b, a))), T).