/*

Trabalho 4 - Paradigmas -OBI
Leonardo Piekala Severo
OBI2017-F1N2


CD Independente
Uma banda formada por alunos e alunas da escola est´a gravando um CD com exatamente sete m´usicas
distintas – S, T, V, W, X, Y e Z. Cada m´usica ocupa exatamente uma das sete faixas contidas no
CD. Algumas das m´usicas s˜ao sucessos antigos de rock; outras s˜ao composi¸c˜oes da pr´opria banda. As
seguintes restri¸c˜oes devem ser obedecidas:
• S ocupa a quarta faixa do CD.
• Tanto W como Y precedem S no CD (ou seja, W e Y est˜ao numa faixa que ´e tocada antes de S
no CD).
• T precede W no CD (ou seja, T est´a numa faixa que ´e tocada antes de W).
• Um sucesso de rock ocupa a sexta faixa do CD.
• Cada sucesso de rock ´e imediatamente precedido no CD por uma composi¸c˜ao da banda (ou seja,
no CD cada sucesso de rock toca imediatamente ap´os uma composi¸c˜ao da banda).
• Z ´e um sucesso de rock.
*/

sucessoRock(5, _).
sucessoRock(_, z).

compAutoral(4, _).
compAutoral(X, Y) :- 
    X \= 5,
    Y \= z.

regra1(L) :-
    L = [_,_,_,s,_,_,_].

regra2(L) :-
    nth0(PosW, L, w),
    nth0(PosY, L, y),
    nth0(PosS, L, s),
    PosW < PosS,
    PosY < PosS.

regra3(L) :-
    nth0(PosT, L, t),
    nth0(PosW, L, w),
    PosT < PosW.

regra5Aux(L, [H | _], Indice) :-
    sucessoRock(Indice, H),
    P is Indice - 1,
    nth0(P, L, X),
    compAutoral(P, X).

regra5Aux(L, [H | T], Indice) :-
    R = sucessoRock(Indice, H),
    not(R),
    N is Indice + 1,
    regra5A(L, T, N).

regra5(L) :-
    regra5Aux(L, L, 0).

cdIndependente(L) :-
    regra1(L),
    regra2(L),
    regra3(L),
    regra5(L).
    
/*
questao 11: Qual das seguintes alternativas poderia ser a 
ordem das músicas no CD, da primeira para a sétima faixa?
    (A) T, W, V, S, Y, X, Z
    (B) V, Y, T, S, W, Z, X
    (C) X, Y, W, S, T, Z, S
    (D) Y, T, W, S, X, Z, V
    (E) Z, T, X, W, V, Y, S
*/

questao11(L):-
   cdIndependente(L).

/*
questao11([t,w,v,s,y,x,z]).
questao11([v,y,t,s,w,z,x]).
questao11([x,y,w,s,t,z,s]).
questao11([y,t,w,s,x,z,v]).
questao11([z,t,x,w,v,y,s]).
correta:d.
*/
