PREDICATES
	question(string,string,string,string)
	friend(string)
	readBook(string)
	watchTV(string)
	playsChess(string, string)
CLAUSES
	friend(ivan).
	friend(petr).
	friend(mikhail).
	friend(sergey).
	
	readBook(X):-!,
		friend(X).
	watchTV(X):-!,
		friend(X),
		X<>"petr".
	
	playsChess(X,Y):-!,
		friend(X),
		friend(Y),
		X<>Y,
		X<>"sergey",
		Y<>"sergey".
		
	question(A,B,C,D):-
		friend(A),
		friend(B),
		friend(C),
		friend(D),
		playsChess(A,B),
		readBook(C),
		watchTV(D),
		A>B,
		A<>C, A<>D,
		B<>C, B<>D,
		C<>D.
GOAL
	question(A,B,C,D).