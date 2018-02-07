fs1=5;
t1=0: 1/fs1: 2;
x=t1.^2;
y=resample(x,3,2);
t2=(0:(length(y)-1))*2/(3*fs1);
plot(t1,x,'*',t2,y,'o',t1,x,':')