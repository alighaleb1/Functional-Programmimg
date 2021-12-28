1.Function Name: delnth(L,N,X)
Function Description: write a predicate delnth to delete the n-th element of a list. You may assume that the input string is always longer than n.

Source Code:
delnthelper([],_,_,[]).
delnthelper([A|As],N,H,ANS):- N=H,AA is H+1, delnthelper(As,N, AA, ANS).
delnthelper([A|As],N,H,ANS2):- AB is H+1, delnthelper(As, N, AB, ANS3), ANS2 = [A|ANS3].

delnth(L,N,X):- delnthelper(L,N,1,X).
Sample Run:

2.Function Name: dispnth(L,N,X)
Function Description: write a predicate dispnth to display the n-th element of a list. You may assume that the input string is always longer than n.

Source Code:
dispnthelper([L|Ls],N,H,ANS):- N=H, ANS = [L].
dispnthelper([L|Ls],N,H,ANS2):- AA is H+1, dispnthelper(Ls,N,AA,ANS2).
dispnth(L,N,X):- dispnthelper(L,N,1,X).


3.Function Name: remv(A,L,X)
Function Description: remove elements from a list (including all multiple appearance.

Sample Code:
remv(_,[],[]).
remv(A,[X|Xs],ANS) :- A=X, remv(A,Xs,ANS).
remv(A,[X|Xs],ANS2):- remv(A,Xs,ANS3), ANS2 = [X|ANS3].

4.Function Name: remvdub(L,X).
Function Description: remove duplicate elements from a list.

Sample Code:

remv(_,[],[]).
remv(A,[X|Xs],ANS) :- A=X, remv(A,Xs,ANS).
remv(A,[X|Xs],ANS2):- remv(A,Xs,ANS3), ANS2 = [X|ANS3].
remvdub([],[]).
remvdub([A|As],ANS) :- remv(A,As,X), remvdub(X,ANS2), ANS=[A|ANS2].
remvdub(L,X).

5.	Function Name: suml(L,X).
Function Description: write a predicate suml to return the of an hybrid integer list.

Sample Code:

suml([],0).
suml([A|As],ANS) :- atomic(A), suml(As,ANS2), ANS is A +ANS2.
suml([A|As],ANS) :- suml(A,ANS2),suml(As,ANS3), ANS is ANS2+ANS3.

6.Function Name: maxL(L,X)
Function Description: a function that displays the largest element in a list.

Sample Code:
maxL([A],A).
maxL([A,B|Cs],ANS):- A<B, maxL([B|Cs],ANS).
maxL([A,B|Cs],ANS2):- maxL([A|Cs],ANS2).

7.Function Name: oddths(L,X).
Function Description: a function that keeps the odds from a list in a list.

Sample Code:
oddths([],[]).
oddths([A],[A]).
oddths([A,B|Cs],ANS):- oddths(Cs,ANS2), ANS=[A|ANS2].

8.Function Name:  indea(N,L,X)
Function Description: write a predicate inde which returns the index(start from 1) of the occurrence of a given value.
 
Sample Code:
rea(_,[],_,[]).
rea(N,[A|As],I,ANS) :- N\=A, AA is I+1, rea(N,As,AA,ANS).
rea(N,[A|As],I,ANS2) :- AB is I+1, rea(N,As,AB,ANS3), ANS2 = [I|ANS3].
inde(N,L,X) :- rea(N,L,1,X).

9.Function Name: nele()
Function description: write a predicate nele which repeats each element in a list n times.

Sample Code:
 neleR([],_,_,[]).
 neleR([A|As],N,I,ANS):- N>1, AA is N-1, neleR([A|As],AA,I,ANS2), ANS = [A|ANS2].
 neleR([A|As],N,I,ANS3):- neleR(As,I,I,ANS4), ANS3 = [A|ANS4].
 nele(L,N,X):- neleR(L,N,N,X).


10.	Function Name: primeton(n,X).
Function Description: implement predicate primeton to find all prime numbers from 2 to a given number n.

Sample Code:
isPrime(2).
isPrime(N):- N>2, is(N,N-1).
is(N,A):- A>1, N mod A =\= 0, is(N,A-1).
is(_,A):- 1 is A.
primeton(0,[]):- !.
primeton(N,[N|L]) :-isPrime(N),!,AA is N-1,primeton(AA,L).
primeton(N,L) :-AA is N-1,primeton(AA,L).


11.Function Name: mergesort(L,X).
Function Description: implement merge sort.

Sample Code:
mergesort([],[]).
mergesort([A],[A]).
mergesort([A,B|R],S) :- split([A,B|R],L1,L2),
mergesort(L1,S1),
mergesort(L2,S2),
merge(S1,S2,S).
split([],[],[]).
split([A],[A],[]).
split([A,B|R],[A|Ra],[B|Rb]) :- split(R,Ra,Rb).
merge(A,[],A).
merge([],B,B).
merge([A|Ra],[B|Rb],[A|M]) :- A=<B, merge(Ra,[B|Rb],M).
merge([A|Ra],[B|Rb],[B|M]) :- A>B, merge([A|Ra],Rb,M).
