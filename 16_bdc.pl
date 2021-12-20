father(albert,james).
father(james,harry).
mother(ruth,james).
mother(lili,harry).

wizard(lili).
wizard(ruth).
wizard(albert).
wizard(X) :- 
	father(Y,X),
	wizard(Y),
	mother(Z,X),
	wizard(Z).

wizard(harry).
espanta(hagrid, dudley).

magical(X) :- wizard(X).
odia(u_v, X) :- magical(X).
odia(a_p, X) :- magical(X).
odia(a_p, X) :- espanta(X, dudley).
