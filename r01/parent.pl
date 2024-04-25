male(tom).
male(bob).
male(jim).
female(pam).
female(liz).
female(pat).

parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, pat).
parent(pat, jim).

ok :- parent(tom, bob), parent(tom, liz).
father(X, Y) :- parent(X, Y), male(X).
grandfather(X, Y) :- parent(Z, Y), father(X, Z).

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).