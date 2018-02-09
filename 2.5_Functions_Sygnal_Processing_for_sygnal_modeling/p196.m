randn('state',0);
t=(1:13)';
x=[0 1 2 3 2 1 0 -1 -2 -3 -2 -1 -0]';
ts=linspace(-5,20,600)';
y=sinc(ts(:,ones(size(t)))-t(:,ones(size(ts)))')*x;
plot(t,x,'o',ts,y)