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

offspring(Y, X) :-
  parent(X, Y).

mother(X, Y) :-
  parent(X, Y),
  female(X).

grandparent(X, Y) :-
  parent(X, X2),
  parent(X2, Y).

sister(X, Y) :-
  parent(Z, X),
  parent(Z, Y),
  female(X),
  dif(X, Y).

% This is a RECURSION:
predecessor(X, Z) :-
  parent(X, Z).
predecessor(X, Z) :-
  parent(X, Y),
  predecessor(Y, Z).
