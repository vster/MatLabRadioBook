t=(0:1/99:1);
x=sin(2*pi*10*t)+.5*sin(2*pi*30*t);
y=fft(x);
m=abs(y);
p=unwrap(angle(y));
f=(0:length(y)-1)*99/length(y);

plot(f,m);
title('Magnitude');
set(gca,'XTick',[ 10 30 70 90]);

figure;
plot(f,p*180/pi);
title('Phase');
set(gca,'XTick',[ 10 30 70 90]);

