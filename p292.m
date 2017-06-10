Wp=[.25 .4];
Ws=[.16 .5];
Rp=3;
Rs=40;
[n,Wn]=cheb1ord(Wp,Ws,Rp,Rs)
[b,a]=cheby1(n,Rp,Wn);
freqz(b,a,512,1000);
