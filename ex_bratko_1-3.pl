happy(X) :- parent(X, _Y).

has2children(X) :-
  parent(X, Y1),
  parent(X, Y2),
  female(Y1),
  dif(Y1, Y2).

grandchild(X, Z) :-
  parent(Y, X),
  parent(Z, Y).

% To enable dif[ference] facility:
% :- use_module(library(dif)).
sister(Y1, Y2) :-
  parent(X, Y1),
  parent(X, Y2),
  female(Y1),
  dif(Y1, Y2).

aunt(X, Y) :-
  sister(X, X1),
  parent(X1, Y).
