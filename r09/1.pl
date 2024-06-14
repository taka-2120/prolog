male(tom).
male(bob).
male(jim).
female(liz).
female(pat).
all_members(L) :- setof(M, male(M), MEN), setof(F, female(F), WOMEN), append(MEN, WOMEN, L).