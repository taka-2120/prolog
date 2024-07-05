same_elements([H|T]) :- check_same(T, H).

check_same([], _).
check_same([H|T], Last) :- H = Last, check_same(T, H).

% Correct
% check_same([Any|T], Any) :- check_same(T, H).