randn('state',0);
Fs = 1000;   
t = 0:1/Fs:.3;

% 200Hz cosine + noise
x = cos(2*pi*t*200) + randn(size(t));   

pwelch(x,33,32,[],Fs,'twosided')