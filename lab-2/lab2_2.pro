PREDICATES
	square(real,real)
	semicircle(real,real)
	belongsTo(real,real)
	readuser
CLAUSES
	square(X,Y):-
		X>=-1,X<=0,
		Y>=-1,Y<=0.
		
	semicircle(X,Y):-
		X>=0,Y>=0,
		X*X+Y*Y<=1.
		
	belongsTo(X,Y):-
		square(X,Y);
		semicircle(X,Y),!.
	
	readuser :- 
		write("Input X: "), readreal(X),
		write("Input Y: "), readreal(Y),
		belongsTo(X, Y).
GOAL
	readuser.