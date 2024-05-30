subst_functor(a, a).
subst_functor(b, b).
subst_functor(0, 0).
subst_functor(1, 1).
subst_functor(g(A, T1), g(A, T2)) :- subst_functor(T1, T2).
subst_functor(f(T1), h(T2)) :- subst_functor(T1, T2).
% subst_functor(h(T), T).

test1(C) :- subst_functor(f(g(a, f(a))), C).
test2(C) :- subst_functor(f(g(a, f(a))), C).
test3(C) :- subst_functor(f(g(b, f(a))), C).