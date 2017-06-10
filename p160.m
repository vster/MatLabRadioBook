t=(0:.01:2)';
y=sin(2*pi*1*t)+0.25*sin(2*pi*3*t);
randn('state',0);
yn=y+0.5*randn(size(t));
plot(t,y,t,yn);