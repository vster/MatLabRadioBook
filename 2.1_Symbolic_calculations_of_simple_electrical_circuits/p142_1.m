syms k n w z
Z=ztrans(2^n)
simplify(iztrans(Z))

Z=ztrans(sin(k*n),w)
simplify(iztrans(Z))

Z=ztrans(cos(n*k),k,z)
simplify(iztrans(Z))

Z=ztrans(cos(n*k),n,w)
simplify(iztrans(Z))

Z=ztrans(sym('f(n+1)'))