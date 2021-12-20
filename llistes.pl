%%trans_a_b([], []).

%%trans_a_b([a | Cua_entrada], [b | Cua_sortida]) :- trans_a_b(Cua_entrada, Cua_sortida).

concatena([], L, L).

concatena([Cap|Cua], L, [Cap | NovaCua]) :- concatena(Cua, L, NovaCua).