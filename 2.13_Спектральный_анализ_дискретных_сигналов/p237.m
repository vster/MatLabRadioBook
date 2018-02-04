randn('state',1); n=0:99;   
s=exp(i*pi/2*n)+2*exp(i*pi/4*n)+exp(i*pi/3*n)+randn(1,100);
X=corrmtx(s,12,'mod'); 
peig(X,3,'whole')            % Uses default NFFT of 256