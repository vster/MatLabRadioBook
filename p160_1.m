t=(0:.01:2)';
y=sin(2*pi*1*t)+0.25*sin(2*pi*3*t);
randn('state',0);
yn=y+0.4*randn(size(t));
plot(t,y,t,yn);

for i=1:0.01:30
    y=sin(2*pi*1*t)+0.25*sin(2*pi*3*t);
    yn=y+0.4*randn(size(t));
    clf;
    hold on;
    plot(t,yn);
    axis([0 2 -3 3]);
    drawnow;
end