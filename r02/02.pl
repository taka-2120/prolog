rem(X, Y, Z) :- X < Y, Z = X.
rem(X, Y, Z) :- X1 is X - Y, rem(X1, Y, Z).