syms f F x w u v
fourier(0.1*x)
F=fourier(sin(x),v)
simplify(ifourier(F))

syms t
f=1/t^2
F=fourier(f,v)
simplify(ifourier(F))

F=fourier(exp(-x^2),x,t)
simplify(ifourier(F))

fourier(diff(sym('F(x)')),x,w)
