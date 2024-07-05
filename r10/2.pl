reverse2(L1, L2) :- r(L1, L2, []).
r([], Z, Z).
r([H1|T1], L2, Z) :- r(T1, L2, [H1|Z]).