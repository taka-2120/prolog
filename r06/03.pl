subst_functor(a, a).
subst_functor(b, b).
subst_functor(0, 0).
subst_functor(1, 1).
subst_functor(g(L1, R1), g(L2, R2)) :- subst_functor(L1, L2), subst_functor(R1, R2).
subst_functor(f(T1), h(T2)) :- subst_functor(T1, T2).

test1(C) :- subst_functor(f(g(a, f(a))), C).
test2(C) :- subst_functor(f(g(a, f(a))), C).
test3(C) :- subst_functor(f(g(b, f(a))), C).