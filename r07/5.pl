subst_ab(a, 0).
subst_ab(b, 1).
subst_ab(f(T1), f(T2)) :- subst_ab(T1, T2).
subst_ab(g(L1, R1), g(L2, R2)) :- subst_ab(L1, L2), subst_ab(R1, R2).
subst_ab(A, A).

test(T) :- subst_ab(g(g(0, a), f(g(b, a))), T).