% Παναγιώτης Κεραμίδης
% 321/2016067

% 1)
edge(a,b).
edge(a,c).
edge(a,d).
edge(b,e).
edge(b,f).
edge(c,g).
edge(c,h).
edge(c,i).
edge(d,j).
edge(e,k).
edge(f,l).
edge(f,m).
edge(h,n).
edge(i,o).
edge(i,p).
edge(j,q).
edge(j,r).
edge(j,s).
edge(m,t).

% 2)
leaf(X) :- edge(Y,X), edge(X,).

% 3)
internal(X) :- edge(Y,X), edge(X,Z).

% 4)
root(X)	:- edge(X,Y), edge(,X).

% 5)
children(X) :- edge(X,Υ), write(Υ).

% 6)
descendants(X) :- children(X), descendants(Y).
	       :- leaf(Y), write(Y).

% 7)
depth(X,D) :- edge(X,Υ), D is D+1, depth(Y,D), write(D).

% 8)
% A)
write(a).
? -descendants(a).

% B)
? -internal(X), children(X,Y), children(X,Z), write(X).

% C)
? -descendants(a).

% D)
? -leaf(X), depth(X,D).