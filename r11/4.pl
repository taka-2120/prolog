elim(0, 0).
elim(1, 1).
elim(2, 2).
elim(sum(ExpL, ExpR), sum(A1, A2)) :- elim(ExpL, A1), elim(ExpR, A2).
elim(diff(ExpL, ExpR), sum(A1, A2)) :- elim(ExpL, A1), elim(minus(ExpR), A2).
elim(minus(minus(Exp)), A) :- elim(Exp, A).
elim(minus(Exp), minus(A)) :- elim(Exp, A).

test(A) :- elim(sum(diff(2, minus(1)), sum(diff(1, 2), 1)), A).