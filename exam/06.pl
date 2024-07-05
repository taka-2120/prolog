max([M], M).
max([H|T], MAX) :- max(T, M), ( H > M -> MAX = H; MAX = M).