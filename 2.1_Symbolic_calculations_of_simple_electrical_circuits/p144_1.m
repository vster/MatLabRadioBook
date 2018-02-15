syms E1 E2 r1 r2 R
P=R*(E1+E2)^2/(r1+r2+R)^2
dP=diff(P,R)
rpmax=solve(dP,R)

E1=12;
E2=48;
r1=0.4;
r2=0.6;
R=r1+r2

I=(E1+E2)/(r1+r2+R)

P1=I*E1
P2=I*E2
PR=I^2*R
delaP=P1+P2-PR