count_ocr(A, A, 1).
count_ocr(A, f(T), X) :- count_ocr(A, T, X).
count_ocr(A, g(L, R), X) :- count_ocr(A, L, X1), count_ocr(A, R, X2), X is X1 + X2.
count_ocr(_, _, 0).

test1(X) :- count_ocr(a, f(g(a, f(a))), X).
test2(X) :- count_ocr(b, f(g(a, f(a))), X).
test3(X) :- count_ocr(a, f(g(b, f(a))), X).