isTm2(a).
isTm2(b).
isTm2(0).
isTm2(1).
isTm2(f(T)) :- isTm2(T).
isTm2(g(A, T)) :- (A = a; A = b; A = 0; A = 1), isTm2(T).
