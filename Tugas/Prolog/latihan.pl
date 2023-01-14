% Silsilah Keluarga

pria(mukti).
pria(samid).
pria(galih).
pria(deri).
pria(gamma).
pria(agung).
pria(yuti).
wanita(mia).
wanita(luna).
wanita(jajuk).
wanita(maya).

keluarga(deri, agung).
keluarga(gamma).
keluarga(galih, mia).
keluarga(maya,yuti).
keluarga(mukti).
keluarga(deri,luna).



saudarakandung(X,Y) :-pria(X), keluarga(X,Y).
saudaratiri(X,Y) :-pria(X), keluarga(X,Y).
pamandankeponakan(X,Y) :-pria(X), keluarga(X,Y).
bibidankeponakan(X,Y) :-wanita(X), keluarga(X,Y).
kakek(X) :-pria(X), keluarga(X).
cucu(X) :-wanita(X), keluarga(X).



