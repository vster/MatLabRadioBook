Fs=1024;
Ts=1/Fs;
f=8;
N=1024;
t=Ts*(0:N-1)';
x=sin(2*pi*f*t);
figure;
subplot(3,1,1);
plot(t,x);
subplot(3,1,2);
periodogram(x,[],[],Fs);
vec=1:20;
X=goertzel(x,vec);
subplot(3,1,3);
plot(vec-1,20*log10(abs(X)));

