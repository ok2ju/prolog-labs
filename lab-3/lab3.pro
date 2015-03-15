PREDICATES
	check(integer,integer,integer)
	check(integer,integer)
CLAUSES
	%check(A,B,Result)
	check(0,0,1).
	check(A,0,0):-
		A>0.

	check(Number,Limit,Result):-
		Limit>0,

		Limit<=Number,!,
		NN=Limit-1,
		RR=Number-Limit,
		check(Number,NN,Result1),
		check(RR,Limit,Result2),
		Result=Result1+Result2.

	check(Number,Limit,Result):-
		Limit>Number,
		check(Number,Number,Result).

	check(A,B):-
		check(A,B,X),
		write(X).

		%pcount(number, limit - 1) + pcount(number - limit, limit);

GOAL
	check(4,4).
