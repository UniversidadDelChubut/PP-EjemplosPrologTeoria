bigger(elephant, horse).
bigger(horse,donkey).
bigger(donkey,monkey).
bigger(donkey,dog).
is_bigger(X, Y) :- bigger(X, Z), is_bigger(Z, Y).
is_bigger(X, Y) :- bigger(X, Y).
