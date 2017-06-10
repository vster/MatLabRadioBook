randn('state',0);
Fs = 1000;   
t = 0:1/Fs:.3;
x = cos(2*pi*t*200)+0.1*randn(size(t)); 
periodogram(x,[],512,Fs) 