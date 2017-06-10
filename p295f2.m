w0=2*pi;
[bt,at]=lp2lp(b,a,w0);
freqz(bt,at);