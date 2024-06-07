sum_list([], 0).
sum_list([H|T], S) :- sum_list(T, S1), S is S1 + H.

list_length([], 0).
list_length([_|T], L) :- list_length(T, L1), L is L1 + 1.

average(L, A) :- sum_list(L, S), list_length(L, N), A is S / N.

% ---------- %

get_age([], []).
get_age([(_, A)|T1], [A|T2]) :- get_age(T1, T2).

average_age(L, Y) :- get_age(L, AL), average(AL, Y).

test(Y) :- average_age([(ann, 80), (bob, 40), (jim, 20), (liz, 16), (tom, 65)], Y).