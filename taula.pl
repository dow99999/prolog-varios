dreta_de(a, b).
dreta_de(b, c).
dreta_de(c, d).
dreta_de(d, e).
dreta_de(e, f).
dreta_de("g", a).

esq_de(X, Y) :- dreta_de(Y, X).
son_veins(X, Y, Z) :- esq_de(X, Y), dreta_de(X, Z).
