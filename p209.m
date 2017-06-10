t=0:0.001:1;
x=cos(2*pi*30*t)+sin(2*pi*60*t);
stem(x(1:30));
title('Original signal');
