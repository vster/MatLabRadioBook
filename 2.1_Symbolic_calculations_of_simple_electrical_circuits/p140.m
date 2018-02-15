syms t x u w
ifourier(sin(w))
ifourier(w*exp(-2*w)*sym('heaviside(w)'))
ifourier(1/(1+2*w),u)
ifourier(sym('fourier(f(x),x,w)'),w,x)