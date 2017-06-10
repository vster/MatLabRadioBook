rand('state',0);
t=0:0.001:0.512;
x=sin(2*pi*50*t)+sin(2*pi*120*t);
y=x+2*randn(size(t))+0.3;
Y=fft(y);
 
Y=fftshift(Y);
Pyy=Y.*conj(Y)/512;
plot(Pyy)
grid
