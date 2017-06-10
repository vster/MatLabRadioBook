a=[1 -2.2137 2.9403 -2.1697 0.9606];
freqz(1,a)

randn('state',1);
x=filter(1,a,randn(256,1));
pburg(x,4)