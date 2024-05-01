edge2(a, b, 8).
edge2(b, c, 10).
edge2(b, d, 5).
edge2(c, e, 7).
edge2(d, e, 2).
edge2(f, g, 16).

dist2(N, M, L) :- edge2(N, M, L).
dist2(N, M, L) :- edge2(N, A, L1), dist2(A, M, L2), L is L2 + L1.