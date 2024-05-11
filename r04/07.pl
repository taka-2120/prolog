nth_element([H|_], 1, H).
nth_element([], _, _) :- write('The length is less than N').
nth_element([_|L], N, X) :- nth_element(L, N1, X), N is N1 + 1.