[b,err,res]=remez(32,[0 0.4 0.5 1],[1 1 0 0],[1,5]);
[h,w]=freqz(b);
subplot(211);
plot(w,abs(h));
ylabel(' Magnitude');
xlabel('Frequency');
subplot(212);
zplane(roots(b));