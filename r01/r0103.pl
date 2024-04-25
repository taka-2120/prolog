right_of(sandglass, pencil).
right_of(butterfly, sandglass).
right_of(fish, butterfly).
right_of(bird, bicycle).
right_of(camera, bird).
right_of(apple, camera).

above(bicycle, pencil).
above(bird, sandglass).
above(camera, butterfly).
above(apple, fish).

left_of(X, Y) :- above(B, Y), above(A, X), right_of(B, A).
left_of(X, Y) :- above(Y, B), above(X, A), right_of(B, A).
below(X, Y) :- above(A, B), right_of(A, Y), right_of(B, X).
below(X, Y) :- above(A, B), right_of(Y, A), right_of(X, B).

upper_right(X, Y) :- above(A, Y), right_of(X, A).
right(X, Y) :- right_of(X, Y).
right(X, Y) :- right_of(X, Z), right(Z, Y).
