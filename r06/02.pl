count_ocr(_, a, 0).
count_ocr(_, b, 0).
count_ocr(_, 0, 0).
count_ocr(_, 1, 0).
count_ocr(A, f(T), X) :- A = T, count_ocr(A, T, X1), X is X1 + 1.
count_ocr(A, g(B, T), X) :- A = B, count_ocr(A, T, X1), X is X1 + 1.
count_ocr(A, f(T), X) :- count_ocr(A, T, X).
count_ocr(A, g(_, T), X) :- count_ocr(A, T, X).

test1(X) :- count_ocr(a, f(g(a, f(a))), X).
test2(X) :- count_ocr(b, f(g(a, f(a))), X).
test3(X) :- count_ocr(a, f(g(b, f(a))), X).