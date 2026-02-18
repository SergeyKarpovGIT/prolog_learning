parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).

female(ann).
female(liz).
female(pam).
female(pat).
male(bob).
male(jim).
male(tom).

offspring(X, Y) :- parent(Y, X).

mother(X, Y) :-
  parent(X, Y),
  female(X).

grandparent(X, Z) :-
  parent(X, Y),
  parent(Y, Z).

% To enable dif[ference] facility:
% :- use_module(library(dif)).
sister(Y1, Y2) :-
  parent(X, Y1),
  parent(X, Y2),
  female(Y1),
  dif(Y1, Y2).
