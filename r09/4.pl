node(s, 10).
node(a, 2).
node(b, 3).
node(c, 4).
node(d, 5).
node(e, 2).
node(g, 0).

node_list(L) :- setof((N/M), node(N, M), L).

count_list([], 0).
count_list([_|T], N) :- count_list(T, N1), N is N1 + 1.

list_sum([], 0).
list_sum([(_/V)|T], Sum) :- list_sum(T, Sum1), Sum is Sum1 + V. 

lsit_average(L, Average) :- list_sum(L, Sum), count_list(L, C), Average is Sum / C.

a_value(Average) :- node_list(L), lsit_average(L, Average).