mymem(X,[X|_]).
mymem(X,[_|Xs]) :- mymem(X,Xs).

has_duplication([A|L]) :- mymem(A,L).
has_duplication([_|L]) :- has_duplication(L).