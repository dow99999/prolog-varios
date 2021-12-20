enCotxe(auckland,hamilton).
enCotxe(hamilton,raglan).
enCotxe(barcelona,girona).
enCotxe(barcelona,lleida).

enTren(lleida,frankfurt).
enTren(girona,frankfurt).
enTren(lleida,paris).
enTren(girona,paris).

enAvio(barcelona,bangkok).
enAvio(barcelona,singapur).
enAvio(paris,losAngeles).
enAvio(bangkok,auckland).
enAvio(losAngeles,auckland).

viatge(X, Y) :- enCotxe(X, Y). 
viatge(X, Y) :- enTren(X, Y). 
viatge(X, Y) :- enAvio(X, Y). 

viatge(X, Z) :- enCotxe(X, Y), viatge(Y, Z).
viatge(X, Z) :- enTren(X, Y), viatge(Y, Z).
viatge(X, Z) :- enAvio(X, Y), viatge(Y, Z).
