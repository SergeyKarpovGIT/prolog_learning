killer('Butch').
married('Milla', 'Marsellus').
married('Marsellus', 'Milla').
dead('Zed').

% marsellus_kills(Z) :- gives_mia_a_footmassage(Z).
kills(marsellus, X) :- gives_footmassage(X, mia).

loves(mia, Y) :- good_dancer(Y).

eats(jules, Z) :- nutritious(Z).
eats(jules, Z) :- tasty(Z).
