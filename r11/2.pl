same_lab([st(_, Lab) | T]) :- check_same(T, Lab).

check_same([], _).
check_same([st(_, Lab) | T], LastLab) :- Lab = LastLab, check_same(T, Lab).

diff() :- same_lab([st(100, network), st(101, logic), st(102, network)]).
same() :- same_lab([st(100, network), st(200, network), st(222, network)]).