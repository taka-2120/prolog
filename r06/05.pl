ocr_check(A, f(T)) :- ocr_check(A, T).
ocr_check(A, g(_, T)) :- ocr_check(A, T).
ocr_check(A, f(A)).
ocr_check(A, g(A, _)).

test1 :- ocr_check(a, f(g(a, f(a)))).
test2 :- ocr_check(b, f(g(a, f(a)))).
test3 :- ocr_check(a, f(g(b, f(a)))).