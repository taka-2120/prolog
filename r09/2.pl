parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, pat).
parent(pat, jim).

count_list([], 0).
count_list([_|T], N) :- count_list(T, N1), N is N1 + 1.

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

n_of_ancestors(Y, N) :- setof(X, ancestor(X, Y), L), count_list(L, N).