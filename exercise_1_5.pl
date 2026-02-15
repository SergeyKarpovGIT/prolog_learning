% wizard(ron).
hasWand(harry).
quidditchPlayer(harry).

wizard(X) :- hasBroom(X), hasWand(X).
hasBroom(Y) :- quidditchPlayer(Y).
