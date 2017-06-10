rp=2;
rs=50;
fs=5000;
f=[1000 1200];
a=[1 0];
dev=[(10^(rp/20)-1)/(10^(rp/20)+1) 10^(-rs/20)];
[n,fo,ao,w]=remezord(f,a,dev,fs);
b=remez(n+1,fo,ao,w);
freqz(b,1,1024,fs);

