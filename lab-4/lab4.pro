DOMAINS
	list = integer*
PREDICATES
	create(integer, integer, list)
	display(list)
	remove(list,list)
CLAUSES
	%CREATE LIST PREDICATE
	create(E, E, [E]):-!.

	create(Start, End, [Start|T]):-
		Start <> End,
		Counter = Start + 1,
		create(Counter, End, T).

	%DISPLAY ELEMENTS OF LIST PREDICATE
	display([]).

	display([H|T]):-
		write(H),nl,
		display(T).

	%REMOVE EVEN-INDEXED ELEMENTS PREDICATE
  	remove([],[]). %empty list

  	remove([H],[H]). %one element in list

	remove([H,_|T1],[H|T2]):-
    		remove(T1,T2).

GOAL
	create(1, 5, L),
	display(L),
	remove(L,NewList).
