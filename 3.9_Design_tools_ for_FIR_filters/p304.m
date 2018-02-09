f=[0 0.3 0.3 0.6 0.6 1];
m=[1 1 0 0 1 1];
b=fir2(40,f,m);
[h,w]=freqz(b,1,128);
plot(f,m,w/pi,abs(h));
legend('Ideal','fir2 n=40')