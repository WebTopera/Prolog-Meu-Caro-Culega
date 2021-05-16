homem(joao).
homem(carlos).
homem(jose).
homem(jhon).

mulher(maria).
mulher(joana).
mulher(josefina).
mulher(carla).

pai(joao, carlos).
pai(joao, maria).
pai(jose, joao).
pai(carlos, pedro).
pai(jhon, joaquim).

mae(joana, carlos).
mae(joana, maria).
mae(josefina, joao).
mae(maria, joaquim).
mae(carla, pedro).

casado(joao, joana).
casado(jose, josefina).
casado(jhon, maria).
casado(carlos, carla).

filho(X,Y) :- pai(Y,X).

irmao(X,Y) :- pai(P,X),pai(P,Y),X\=Y.

tio(X,Y) :- pai(P,X),pai(P,Z),pai(Z,Y),X\=Z ; mae(M,X),mae(M,Z),mae(Z,Y),X\=Z. 

avô(X,Y) :- pai(X,P),pai(P,Y) ; mae(X,M),mae(M,Y).