syms x;
F=sin(x)
taylor(F)
taylor(F,'ExpansionPoint',10)
taylor(exp(x),'ExpansionPoint',1)
taylor(cos(x),'ExpansionPoint',-pi/2,'Order',6)