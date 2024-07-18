start([(2,3),(1,3),(2,2),(3,3),(3,2),(3,1),(2,1),(1,1),(1,2)]).
goal([(2,2),(1,3),(2,3),(3,3),(3,2),(3,1),(2,1),(1,1),(1,2)]).

d((X1, Y1), (X2, Y2), D) :- abs(X1 - X2, X), abs(Y1 - Y2, Y), D is X + Y.
totdist([], [], 0).
totdist([T1 | S1], [T2 | S2], SumD) :- d(T1, T2, D), totdist(S1, S2, SumD1), SumD is D + SumD1.

node(Node, Value) :- goal(G), totdist(Node, G, Value).

test(V) :- start(Node), node(Node, V).