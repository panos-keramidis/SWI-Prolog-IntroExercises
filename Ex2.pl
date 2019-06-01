% Παναγιώτης Κεραμίδης
% 321/2016067

% 1)
remove(X,[X|T],L):- remove(X,T,L)not(X==H).
remove(X,[H|T],[H|F]):- remove(X,T,F).

% 2)
removeN(X,N,[X|T],L):-  N is N-1, N>0, removeN(X,N,T,L)not(X==H).
removeN(X,N,[H|T],[H|F]):- N is N-1, N>0, removeN(X,N,T,F).
 
% 3)
duplicate([],[]).
duplicate([H|T],[H,H|Y]):- duplicate(T,Y).

% 4)
duplicateN([H],1,[H]) :- !.
duplicateN([H], N, [H|X]) :- M is N - 1, M > 0, duplicateΝ([H], M, X).
duplicateN([H|T], N, X) :- duplicateΝ([H], N, Y), duplicateΝ(T, N, Z), !, append(Y, Z, X). 
% υποθέτοντας πως έχουμε ήδη δηλώσει άνωθεν την append

% 5)
compress_duplicate([H], [H]).
compress_duplicate([H,H|T], X) :- compress_duplicate([H|T],X).
compress_duplicate([H|T], [H|X]) :- compress_duplicate(T, X).

% 6)
compress_duplicate2([H], [H]).
compress_duplicate2([H|T], X) :- compress_duplicate2([H|T],X), compress_duplicate2(T, X).
