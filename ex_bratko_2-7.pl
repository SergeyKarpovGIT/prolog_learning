parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).

predecessor(X, Y) :-
  parent(X, Y).

% Relatives definition:
relatives(X, Y) :-
  (predecessor(X, Y); predecessor(Y, X)).

relatives(X, Y) :-
  (predecessor(Z, X), predecessor(Z, Y)); (predecessor(X, Z), predecessor(Y, Z)).
