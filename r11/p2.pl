increase([]).
increase([_]).
increase([H1, H2 | T]) :- H1 =< H2, increase(T).