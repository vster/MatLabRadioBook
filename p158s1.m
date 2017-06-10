x=-10:0.01:10;
subplot(2,2,1),plot(x,0.8*sin(x)),xlabel('0.8*sin(x)')
subplot(2,2,2),plot(x,0.8*sign(sin(x))),xlabel('0.8*sign(sin(x)')
subplot(2,2,3),plot(x,atan(tan(x))),xlabel('atan(tan(x)')
subplot(2,2,4),plot(x,asin(sin(x))),xlabel('asin(sin(x)')