are_edges(a, [b, c]).
are_edges(b, [a, c, d]).
are_edges(c, [d]).
are_edges(d, []).

list_length([], 0).
list_length([_|T], L) :- list_length(T, L1), L is L1 + 1.

n_of_edges(N, K) :- are_edges(N, L), list_length(L, K).