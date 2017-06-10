N=1000;
sig=[0.5*sin(2*pi*0.01*[0:N-1]) cos(2*pi*0.004*[0:N-1])];
noise=0.5*randn(1,2*N);
n=sig+noise;
x=[0 n];
d=[sig 0];
M=32;mu=0.2;
plot(0:2*N,x);
grid
title('Input to the Adaptive Filter');

Hadapt=adaptfilt.nlms(M,mu,1e-6);
[y,e]=filter(Hadapt,x,d);
cla;
plot(0:2000,[d' y']);
grid on;
axis([0 2000 -2 2]);
title('Adaptive Linear Prediction');
legend('Actual Signal','Predicted Signal')

X=xcorr(e(50:end),'coeff');
[maxX idx]=max(X);
plot(X(idx:end));
grid;
title('Autocorrelation of the Prediction Error');



