h1=intfilt(4,2,0.5);
randn('state',0);
x=filter(fir1(30,0.5),1,randn(200,1));
xr=reshape([x zeros(length(x),3)]',4*length(x),1);
y=filter(h1,1,xr);
plot(100:200,y(100:200),7+(101:4:196),x(26:49),'o')