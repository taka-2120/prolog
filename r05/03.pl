has_common_element([], []).
has_common_element(L, [H|_]) :- member(H, L).
has_common_element(L, [_|T]) :- has_common_element(L, T).
