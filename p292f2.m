Wp=.7;
Ws=.5;
Rp=3;
Rs=60;
[n,Wn]=ellipord(Wp,Ws,Rp,Rs);
[b,a]=ellip(n,Rp,Rs,Wn);
freqz(b,a,512,1000);