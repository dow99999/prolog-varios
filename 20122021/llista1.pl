% comprova si un element es dinsn una llista
% element_de(X, [X|Cua]).
% element_de(X, [_|Cua]) :- element_de(X, Cua).

% té èxit si Llista és una llista que només conté as com a elements
tot_as([a]) :- !.
tot_as([a|Cua]) :- tot_as(Cua).


% OutList s'obté de InList substituint totes les as d'InList per b, totes les bs per cs i totes les cs per as.
substi_a_b_c([], []).
substi_a_b_c([a|CuaEntrada], [b|CuaSortida]) :- substi_a_b_c(CuaEntrada, CuaSortida), !.
substi_a_b_c([b|CuaEntrada], [c|CuaSortida]) :- substi_a_b_c(CuaEntrada, CuaSortida), !.
substi_a_b_c([c|CuaEntrada], [a|CuaSortida]) :- substi_a_b_c(CuaEntrada, CuaSortida), !.
substi_a_b_c([X|CuaEntrada], [X|CuaSortida]) :- substi_a_b_c(CuaEntrada, CuaSortida).


% Lng és el nombre d'elements de la llista Llista.
long_llista([], 0).
long_llista([_|Cua], Total) :- 
  long_llista(Cua, Anterior),
  Total is Anterior+1.


% InList és una llista d'enters i OutList és la llista que resulta d'afegir 1 a cada element de InList.
suma_un([], []).
suma_un([V|CuaE], [O|CuaS]) :- suma_un(CuaE, CuaS), O is V+1.

% que sigui cert quan la llista d'entrada Llista conté un 0.
te_un_zero([0]).
te_un_zero([Value|Cua]) :- te_un_zero(Cua); Value is 0, !.

max([X], X) :- !.

max([V|Cua], Max) :- 
  max(Cua, Aux),
  V > Aux,
  Max is V,
  !.

max([V|Cua], Max) :- 
  max(Cua, Aux),
  V =< Aux,
  Max is Aux.

