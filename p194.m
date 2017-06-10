t=(0: .05: 4*pi);
x1=sawtooth(t,1);
x2=sawtooth(t,1/2);
plot(t,x1+1/2,t,x2-1/2)
