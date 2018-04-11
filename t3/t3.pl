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
