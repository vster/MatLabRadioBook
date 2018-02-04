t=0:.00025:0.3;
x=sin(2*pi*30*t)+t;
stem(x(1:120)),axis([0 120 -2 2])
title('Original signal');