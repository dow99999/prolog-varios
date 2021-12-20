progenitor_de(paul,petunia).  
progenitor_de(helen,petunia).  
progenitor_de(paul,lili).  
progenitor_de(helen,lili).  
progenitor_de(albert,james).  
progenitor_de(ruth,james). 
progenitor_de(petunia,dudley). 
progenitor_de(vernon,dudley).  
progenitor_de(lili,harry).  
progenitor_de(james,harry).


ancestre_de(X, Y) :- progenitor_de(X, Y).
ancestre_de(X, Y) :- progenitor_de(X, Z), ancestre_de(Z, Y).