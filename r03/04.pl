sum_list_small([], 0).
sum_list_small([H|T], S) :- H > 10, sum_list_small(T, S).
sum_list_small([H|T], S) :- sum_list_small(T, S1), S is S1 + H.