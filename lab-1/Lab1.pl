PREDICATES
	plays(string,string)
	question(string,string,string,string,string,string,string,string)
CLAUSES
	plays(sergey,books).
	plays(sergey,tv).
	
	plays(petr,chess).
	plays(petr,books).
	
	plays(mikhail,chess).
	plays(mikhail,books).
	plays(mikhail,tv).
	
	plays(ivan,chess).
	plays(ivan,books).
	plays(ivan,tv).
	
	question(N1,chess, N2,chess, N3,books, N4,tv):-
		plays(N1,chess),
		plays(N2,chess),
		plays(N3,books),
		plays(N4,tv),
		N1<>N2,N1<>N3,N1<>N4,
		N2<>N3,N2<>N4,
		N3<>N4.
GOAL
	question(N1,chess, N2,chess, N3,books, N4,tv), write(N1,"- Chess ",N2,"- Chess ",N3,"- Books ",N4,"- TV"),nl, fail.