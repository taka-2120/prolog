arith_prog([H1, H2 | T]) :- Diff is H2 - H1, check_diff([H2|T], Diff).
check_diff([], _).
check_diff([_], _).
check_diff([H1, H2 | T], Diff) :- Diff_Next is H2 - (H1), Diff = Diff_Next, check_diff([H2 | T], Diff_Next).