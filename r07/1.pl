isTm3(a).
isTm3(b).
isTm3(0).
isTm3(1).
isTm3(f(T)) :- isTm3(T).
isTm3(g(T, A)) :- (A = a; A = b), isTm3(T).
