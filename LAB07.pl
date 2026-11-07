basket([coffee, milk, chocolate, apple, juice]).

add(X, L, [X|L]).

show([]).
show([H|T]) :-
    write(H), nl,
    show(T).

start :-
    basket(L),
    menu(L).

menu(L) :-
    write('** SHOPPING LIST **'), nl,
    write('d. display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. exit.'), nl,
    write('ENTER YOUR CHOICE .'), nl,
    read(C),
    choice(C, L).

choice(d, L) :-
    show(L),
    menu(L).
choice(a, L) :-
    write('enter the item you want to add it'), nl,
    read(X),
    add(X, L, L1),
    write('The item has been added'), nl,
    menu(L1).
choice(e, _).
