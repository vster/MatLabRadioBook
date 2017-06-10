n=8;
Rp=2;
Rs=35;
[z,p,k]=ellipap(n,Rp,Rs);
[b,a]=zp2tf(z,p,k);
freqz(b,a);