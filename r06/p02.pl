subst(a, c).
subst(f(T1), f(T2)) :- subst(T1, T2).
subst(T, T).