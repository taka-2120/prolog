cond(a, zzz).

find_atom(A, B, [A | L], [B | L]) :- cond(A, B).
find_atom(A, B, [H | T1], [H | T2]) :- find_atom(A, B, T1, T2).