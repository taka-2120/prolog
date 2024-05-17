partition([], _, [], []).
partition([H|T], X, [H|L], S) :- H >= X, partition(T, X, L, S).
partition([H|T], X, L, [H|S]) :- partition(T, X, L, S).