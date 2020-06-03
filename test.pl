pred1(opt1).
pred2(opt1).
pred2(opt2).
pred3(opt1).
pred3(opt2).
pred3(opt3).
pred4(opt1).
pred4(2).
pred4(2.2).
pred4(3.2e2).
pred4(hamster(small, grey)).
man(jacek).
man(wojtek).
woman(agata).
woman(agnieszka).
parent(agata, jacek).
parent(wojtek, jacek).
parent(agata, agnieszka).
parent(wojtek, agnieszka).
owner(jacek, hamster(small, grey)).
owner(jacek, hamster(small, grey), dog(big, white)).
owner(agnieszka, hamster(small, grey), dog(big, white)).
test(n1(2.3, 2.4, 2.5, 2), n1(at1, n2(at2, n3(at3, at4), at5), n2(at6)), n1(at1, n2(at2))).
test2(at0, n1(2.3, 2.4, 2.5, 2), at2, 4).
rodzic(kasia,robert).
rodzic(tomek,robert).
rodzic(tomek,eliza).
rodzic(robert,anna).
rodzic(robert,magda).
rodzic(magda,jan).
kobieta(kasia).
kobieta(eliza).
kobieta(magda).
kobieta(anna).
mezczyzna(tomek).
mezczyzna(robert).
mezczyzna(jan).
matka(X,Y) :-
	rodzic(X,Y),
	kobieta(X).
ojciec(X,Y) :-
	rodzic(X,Y),
	mezczyzna(X).
przodek(maciek,kamil).
przodek(X,Y) :-
	rodzic(X,Y).
przodek(X,Z) :-
	rodzic(X,Y),
	przodek(Y,Z).
testfun(a,b,c,d).
testfun(A, B, C, D) :-
    rodzic(A,B),
    przodek(C,D),
    przodek(B,C).
testfun(a2,b3,c3,d3).
testfun(owner(jacek, hamster(small, A)),parent(ania,B),wow(3.3),D) :-
    rodzic(A,B),
    mezczyzna(D),
    kobieta(D).
testfun(przodek(A,X),B,C,przodek(maciek,D)) :-
    rodzic(A,B),
    mezczyzna(C),
    kobieta(D),
    kobieta(X),
    mezczyzna(kobieta(przodek(maciek,D))).
testfun(small,B,zzzz(A,mam(C,X),lol(2)),przodek(F,D)) :-
    rodzic(A,B),
    mezczyzna(C),
    kobieta(D),
    kobieta(X),
    kobieta(maciek(zenon(A))),
    mezczyzna(lol(1,2)).