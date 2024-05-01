number_of_evens([], 0).
number_of_evens([H|T], C) :- 0 is mod(H, 2), number_of_evens(T, C1), C is C1 + 1.
number_of_evens([_|T], C) :- number_of_evens(T, C).