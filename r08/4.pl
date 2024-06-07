sum_list([], 0).
sum_list([H|T], S) :- sum_list(T, S1), S is S1 + H.

list_length([], 0).
list_length([_|T], L) :- list_length(T, L1), L is L1 + 1.

average(L, A) :- sum_list(L, S), list_length(L, N), A is S / N.

% ---------- %

compare_value([], [], 0).
compare_value(E, M, same) :- average(E, EA), average(M, MA), EA == MA.
compare_value(E, M, english) :- average(E, EA), average(M, MA), EA > MA.
compare_value(_, _, math).

test(R) :- compare_value([90,75,72],[55,68,83],R).