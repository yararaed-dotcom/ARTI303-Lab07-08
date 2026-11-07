join_lists([], L, L).
join_lists([X|L1], L2, [X|L3]) :- join_lists(L1, L2, L3).

deleteElement(_, [], []).
deleteElement(X, [X|Tail], Tail1) :-
    deleteElement(X, Tail, Tail1).
deleteElement(X, [Y|Tail], [Y|Tail1]) :-
    X \= Y,
    deleteElement(X, Tail, Tail1).

add_at_the_end(X, L, L1) :-
    join_lists(L, [X], L1).
