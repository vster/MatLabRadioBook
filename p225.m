randn('state',0);
x=randn(1013,1);
y=czt(x);
h=fir1(30,125/500,boxcar(31));
fs=1000;
f1=100;
f2=150;
m=1024;
w=exp(-j*2*pi*(f2-f1)/(m*fs));
a=exp(j*2*pi*f1/fs);
y=fft(h,1000);
z=czt(h,m,w,a);
fy=(0:length(y)-1)'*1000/length(y);
fz=((0:length(z)-1)'*(f2-f1)/length(z))+f1;
plot(fy(1:500),abs(y(1:500)));
axis([1 500 0 1.2])
title('FFT');
figure;
plot(fz,abs(z));
axis([f1 f2 0 1.2]);
title('CZT')