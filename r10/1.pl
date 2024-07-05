list_length2(L, N) :- ll(L, N, 0).
ll([], N, N).
ll([_|T], N, Z) :- Z1 is Z + 1, ll(T, N, Z1).