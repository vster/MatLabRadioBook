fsamp=10000;
fcuts=[300 500 3000 3200];
mags=[0 1 0];
devs=[0.01 0.05 0.01];
[n,Wn,beta,ftype]=kaiserord(fcuts,mags,devs,fsamp);
n=n+rem(n,2);
hh=fir1(n,Wn,ftype,kaiser(n+1,beta),'noscale');
[H,f]=freqz(hh,1,1024,fsamp);
plot(f,abs(H)),
grid on


