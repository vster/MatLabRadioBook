syms U1 U2 U3 R6 real
eq1=27/80*U1-1/16*U2-25;
eq2=-1/16*U1+3/40*U2-1/80*U3-2;
eq3=-1/80*U2+(1/R6+1/16)*U3+2-20/R6;
[U1,U2,U3]=solve(eq1,eq2,eq3)
I6=simplify((20-U3)/R6)

