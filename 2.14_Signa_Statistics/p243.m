randn('state',0);
h=fir1(30,0.2,boxcar(31));
h1=ones(1,10)/sqrt(10);
r=randn(16384,1);
x=filter(h1,1,r);
y=filter(h,1,x);
csd(x,y,512,10000,triang(200),0,[])