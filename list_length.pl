% Before consulting this file use:
% use_module(library(clpz)).
list_length([], 0).
list_length([_|Ls], N) :-
    N #> 0,
    N #= N0 + 1,
    list_length(Ls, N0).
% To check if program is operational:
% list_length("abc", L).
