accumulate2(L) :- accum2(1,L,[]).
accum2(6,S,S).
accum2(N,L,S) :- N1 is N+1, accum2(N1,L,[N|S]).

ip([], [], IP, IP).
ip([X|X1], [Y|Y1], IP, Z) :- Z1 is X * Y + Z, ip(X1, Y1, IP, Z1).
inner_product2(X, Y, IP) :- ip(X, Y, IP, 0).