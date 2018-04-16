%1--.
zeroInt(L) :- nth0(0,L,0).

%2--.
has5(L) :- L = [_,_,_,_,_].

%3--.
hasN(L,N) :- length(L,N).

%4--.
potN0(0,[_|1]).
potN0(N,L) :- 
    N > 0,
    L = [H,T],
    H is 2**N,
    N1 is N-1,
    potN0(N1, T).

%5--.
zipmult([],[],[]).      
zipmult(L1,L2,L3):-
    L1 = [H1|T1],
    L2 = [H2|T2],
    L3 = [H3|T3],
    H3 is H1 * H2,
    zipmult(T1,T2,T3).

%6--
potencias(0,[]) :- !.
potencias(N,L) :-
    N > 0,
    potAux(N,L,0).

potAux(N,[],N).
potAux(N,L,Indice) :-
    L = [H|T],
    H is 2**Indice,
    N1 is Indice + 1,
    potAux(N,T,N1).

%7--
positivos([],[]) :- !.
positivos(L1, L2) :-
    L1 = [H1|T1],
    (H1 > 0 -> L2 = [H1|T2] ; true),
    (H1 > 0 -> T = T2 ; T = L2),
    positivos(T1,T).

%8--
mesmaPosicao(A,[A|_],[A|_]) :- !. %verificação de diferença
mesmaPosicao(A,L1,L2) :-
    L1 = [_|T1],
    L2 = [_|T2],
    mesmaPosicao(A,T1,T2).

%9--
comissao(0,_,[]).
comissao(NP,LP,C) :-
    NP > 0,
    NP1 is NP - 1,
    C = [H|T],
    comissaoAux(H,LP,R),
    comissao(NP1,R,T).

comissaoAux(H,[H|T],T).
comissaoAux(X,[_|T],R) :- comissaoAux(X,T,R).

%10--
azulejos(0,0) :- !.
azulejos(NA,NQ) :-
    NA >= 0,
    D is sqrt(NA),
    D1 is floor(D),
    NA1 is NA - (D1*D1),
    azulejos(NA1,NQ1),
    NQ is NQ1 + 1.
