/*
Trabalho 4 - Paradigmas -OBI
Leonardo Piekala Severo

OBI2017-F3N1

Bolsa de estudo
Exatamente sete alunas – Fafa, Gal, Hebe, Isa, Juju, Kia e Lia – concorrem por uma bolsa de estudos
para um Curso de Programa¸c˜ao de Computadores e v˜ao ser entrevistadas pela Diretora. Cada aluna
ser´a entrevistada exatamente uma vez, uma de cada vez, obedecendo as seguintes condi¸c˜oes:
• Isa ´e a primeira ou ´ultima aluna a ser entrevistada.
• A quarta aluna a ser entrevistada deve ser ou Gal ou Juju.
• Hebe ´e entrevistada imediatamente antes de Lia.
• Gal ´e entrevistada em algum momento antes de de Kia.
• Juju n˜ao ´e entrevistada imediatamente antes ou imediatamente apos Kia.

*/

regra1(L):-
   L = [i,_,_,_,_,_,_];
   L = [_,_,_,_,_,_,i].

regra2(L):-
   L = [_,_,_,g,_,_,_];
   L = [_,_,_,j,_,_,_].

regra3(L):-
   nth0(posLia, L, l),
   nth0(posHebe, L, h),
   posHebe =:= posLia-1.

regra4(L):-
   nth0(posGal, L, g),
   nth0(posKia, L, k),
   posGal < posKia.

regra5(L):-
   nth0(posJuju, L, j),
   nth0(posKia, L, k),
   posJuju =\= posKia-1;
   posJuju =\= posKia+1.


bolsa(X):-
   regra1(X),
   regra2(X),
   regra3(X),
   regra4(X),
   regra5(X).
