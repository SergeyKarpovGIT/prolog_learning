f(1, one).
f(s(1), two).
f(s(s(1)), three).

f(s(s(s(X))), N) :-
  f(X, N).

translate(Number, Word) :-
  Number = 0, Word = zero;
  Number = 1, Word = one;
  Number = 2, Word = two;
  Number = 3, Word = three;
  Number = 4, Word = four;
  Number = 5, Word = five;
  Number = 6, Word = six;
  Number = 7, Word = seven;
  Number = 8, Word = eight;
  Number = 9, Word = nine.
