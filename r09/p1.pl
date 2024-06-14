male(tom).
male(bob).
male(jim).
female(liz).
female(pat).

female(X) :- not(male(X)). 

gather_men(M) :- setof(N, male(N), M).

count_list([], 0).
count_list([_|T], N) :- count_list(T, N1), N is N1 + 1.

number_of_men(N) :- gather_men(M), count_list(M, N).