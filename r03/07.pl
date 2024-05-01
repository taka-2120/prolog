insert_end([], A, [A]).
insert_end([H|T], A, [H|T1]) :- insert_end(T, A, T1).