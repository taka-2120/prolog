sum_list([], 0).
sum_list([H|T], S) :- sum_list(T, S1), S is S1 + H.

list_length([], 0).
list_length([_|T], L) :- list_length(T, L1), L is L1 + 1.

average(L, A) :- sum_list(L, S), list_length(L, N), A is S / N.