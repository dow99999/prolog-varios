magical(norbert).
magical(buckbeat).
magical(ssss).
dementor(ssss).
like(harry,X) :- magical(X), not(dementor(X)).
