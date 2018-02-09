x=sym('x');
y=sym('y');
diff(x^y)
diff(x^y,x)
diff(sin(y*x),x,3)
diff([x^3 sin(x) exp(x)],x)