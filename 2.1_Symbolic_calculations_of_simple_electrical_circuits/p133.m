syms x
int(x*exp(-x),x,0,inf)
a=int(x^20*exp(-x),x,0,1)
double(a)