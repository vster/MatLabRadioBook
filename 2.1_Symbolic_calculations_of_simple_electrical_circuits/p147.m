syms f L C
Z=i*2*pi*f*L+1/(i*2*pi*f*C)
f1=solve(Z==0,f)
simplify(f1)