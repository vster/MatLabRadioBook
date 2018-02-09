syms x y z;
F=[x^2;x+y/z;x*z];
v=[x,y,z];
J=jacobian(F,v)
v=[x,y];
jacobian(F,v)
jacobian(x*y,v)