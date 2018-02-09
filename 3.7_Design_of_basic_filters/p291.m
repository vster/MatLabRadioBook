f=[0 0.2 0.2 0.6 0.6 1];
m=[0 0 1 1 0 0];
[b,a]=yulewalk(10,f,m);
[h,w]=freqz(b,a,128);
plot(f,m,w/pi,abs(h),'--')

    