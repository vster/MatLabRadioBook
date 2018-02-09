F=[0 0.1 0.4 0.7 0.9 1];
A=[0 0 1 1 0 0];
b=firls(25,F,A,'hilbert');
[H,f]=freqz(b,1,512,2);
subplot(1,1,1);
plot(f,abs(H));
hold off
