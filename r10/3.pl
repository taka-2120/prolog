mid2(L1, Min, Max, L2) :- m(L1, Min, Max, L2, []).

m([], _, _, Z, Z).
m([H1|T1], Min, Max, L2, Z) :- Min =< H1, H1 =< Max, m(T1, Min, Max, L2, [H1|Z]).
m([_|T1], Min, Max, L2, Z) :- m(T1, Min, Max, L2, Z).