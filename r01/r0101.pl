male(tom).
male(bob).
male(jim).

female(pam).
female(liz).
female(pat).

age(tom, 80).
age(bob, 58).
age(jim, 2).
age(pam, 76).
age(liz, 55).
age(pat, 27).

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

senior(X, Y) :- age(X, A), age(Y, B), A > B.