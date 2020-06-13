sa("-").
sb("+").
sc("/").
sd("*").
na(0).
nb(1).
nc(2).
nd(3).
nf(4).
ng(5).
nh(6).
ni(7).
nj(8).
nk(9).

sig(A) :- sa(A); sb(A); sc(A); sd(A).
num(B) :- na(B); nb(B); nc(B); nd(B); nk(B); nf(B); ng(B); nh(B); ni(B); nj(B).

expresion(A,B,C) :- sig(A), num(B), num(C).
