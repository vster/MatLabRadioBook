randn('state',0)
fs=1000;
t=(0:fs)/fs;
A=[1 2 4];
f=[160;120;210];
xn=A*sin(2*pi*f*t)+0.1*randn(size(t));
[P1,f]=pwelch(xn,hamming(256),128,1024,fs);
[P2,f]=pburg(xn,14,1024,fs);
plot(f,10*log10(P1),':',f,10*log10(P2));grid
ylabel('PSD Estimates (dB/Hz)');
xlabel('Frequency (Hz)');
legend('Welch','Burg')

