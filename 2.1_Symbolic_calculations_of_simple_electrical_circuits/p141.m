syms a s t w x
L=laplace(t^5)
simplify(ilaplace(L))

L=laplace(exp(a*s))
simplify(ilaplace(L))

L=laplace(sin(w*x),t)
simplify(ilaplace(L))

L=laplace(cos(x*w),w,t)
simplify(ilaplace(L))

L=laplace(x*sym(3/2),t)
simplify(ilaplace(L))

L=laplace(diff(sym('F(t)')))
simplify(ilaplace(L))