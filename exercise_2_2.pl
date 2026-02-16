house_elf(dobby).
witch(hermione).
witch(rita_skeeter).
wizard('McGonagall').

magic(X) :- house_elf(X).
magic(X) :- witch(X).
magic(X) :- wizard(X).
