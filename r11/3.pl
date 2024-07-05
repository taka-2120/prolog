exist_label(Label, Label).
exist_label(Label, t(Node, T1, T2)) :- exist_label(Label, Node); exist_label(Label, T1); exist_label(Label, T2).
exist_label(Label, t(Node, T)) :-  exist_label(Label, Node); exist_label(Label, T).

test() :- exist_label(2, t(1, t(1, 2, 3), t(2, 1))).