subst2(a, c).
subst2(f(T1), f(T2)) :- subst2(T1, T2).
subst2(g(A, T1), g(A, T2)) :- subst2(T1, T2).
subst2(T, T).

test(X) :- subst2(f(g(1, f(a))), X).