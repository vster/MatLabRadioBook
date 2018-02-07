a=[1 0.5 1];
b=[0.35 0.5 1];
w=logspace(-1,1);
h=freqs(b,a,w);
mag=abs(h);
phase=angle(h);

subplot(2,1,1);
loglog(w,mag)

subplot(2,1,2);
semilogx(w,phase)

