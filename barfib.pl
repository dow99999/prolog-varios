entrant("amanida_verda").
entrant("croquetes").
entrant("amanida_de_tomaquet").
entrant("fideua").

p_prin("Hamburguesa Especial amb patates").
p_prin("Hamburguesa Especial amb amanida").
p_prin("Hamburguesa “Doble de Queso” amb patates").
p_prin("Hamburguesa “Doble de Queso” amb amanida").
p_prin("Hamburguesa “Doble de Queso” amb bacon").
p_prin("Pollastre").

postre("flam").
postre("iogurt").
postre("pastís de formatge").

menu(molta_gana, Entrant, Plat_principal, Postre) :- entrant(Entrant), p_prin(Plat_principal), postre(Postre).

menu(no_tanta_gana, res, Plat_principal, Postre) :- p_prin(Plat_principal), postre(Postre).
menu(no_tanta_gana, Entrant, Plat_principal, res) :- entrant(Entrant), p_prin(Plat_principal).

menu(dieta, Entrant, res, res) :- entrant(Entrant).