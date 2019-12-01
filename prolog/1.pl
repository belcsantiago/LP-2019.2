ama('carlos', 'dora').
ama('lia', 'lea').
ama('lea', 'paulo').
ama('paulo', 'juca').
ama('dito', 'rita').
ama('rita', 'dito').
ama('rita', 'carlos').
ama('juca', 'dora').
ama('dora', 'carlos').
ama('dora', 'rita').
ama('dora', 'lia').
ama('dora', 'pedro').
ama('dora', 'lea').
ama('dora', 'juca').
ama('dora', 'paulo').


rivais(X,Y) :-
    ama(X,Z),
    ama(Y,Z),
    X\=Y.

casal(X,Y) :-
    ama(X,Y),
    ama(Y,X),
    X @< Y.

/*----------------------
Queries
Letra A
amava(carlos, Y)
Letra B
rivais(rita, dora)
Letra C
casal(carlos, dora)
------------------------*/
