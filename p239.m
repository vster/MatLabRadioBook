randn('state',1);
n=0:99;
s=exp(i*pi/3*n)+exp(i*pi/5*n)+randn(1,100);
X=corrmtx(s,12,'mod');
pmusic(X,3,'whole')