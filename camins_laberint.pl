connectats(1,2).
connectats(3,4).
connectats(5,6).
connectats(7,8).
connectats(9,10).
connectats(12,13).
connectats(13,14).
connectats(15,16).
connectats(17,18).
connectats(19,20).

connectats(4,1).
connectats(6,3).
connectats(4,7).
connectats(6,11).
connectats(14,9).
connectats(11,15).
connectats(16,12).
connectats(14,17).
connectats(16,19).


cami(X, Y) :- connectats(X, Y).
cami(X, Z) :- connectats(X, Y), cami(Y, Z).