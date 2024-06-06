count_ocr(A, A, 1).
count_ocr(A, f(T), X) :- count_ocr(A, T, X).
count_ocr(A, g(L, R), X) :- count_ocr(A, L, X1), count_ocr(A, R, X2), X is X1 + X2.

count_alphabet(a, _).
count_alphabet(b, _).
count_alphabet(0, _).
count_alphabet(1, _).
count_alphabet(A, C) :- count_ocr(a, A, C1), count_ocr(b, A, C2), C is C1 + C2.

test(C) :- count_alphabet(g(0, f(g(b, f(a)))), C).