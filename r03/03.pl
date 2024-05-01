number_of_name([], 0).
number_of_name([H|T], C) :- ann == H, number_of_name(T, C1), C is C1 + 1.
number_of_name([_|T], C) :- number_of_name(T, C).