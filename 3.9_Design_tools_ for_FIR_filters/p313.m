f=[0 0.2 0.3 0.6 0.7 1];
a=[0 0 1 1 0 0];
b=remez(40,f,a);
[h,w]=freqz(b,1,512);
plot(f,a,w/pi,abs(h));
legend('Ideal','remez n=40')
