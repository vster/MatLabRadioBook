t=0:0.001:0.3;
x=cos(2*pi*t*150)+0.2*randn(size(t));
[Pxx,w]=periodogram(x,[],'oneside',512);
plot(w,Pxx)