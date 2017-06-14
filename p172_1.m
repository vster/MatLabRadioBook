% Задание трехчастотного сигнала с шумом
t=0:0.0005:1;

hold on;
% figure;
s1=subplot(2,1,1);
s2=subplot(2,1,2);
for i=1:0.01:10
    % x=sin(2*pi*200*t)+sin(2*pi*150*t)+0.4*sin(2*pi*250*t);
    x=sign(sin(2*pi*150*t));
    y=x+0.1*randn(size(t));
    Y=fft(y,1024);
    Pyy=Y.*conj(Y)/1024;
    PyyL=20*log10(Pyy);
    f=2000*(0:150)/1024;
    % s1=subplot(2,1,1);
    subplot(s1);
    % clf(s1);
    plot(s1,t,y);
    axis(s1,[0 1 -3 3]);
    grid;
    % s2=subplot(2,1,2);
    subplot(s2);
    % clf(s2);
    plot(s2,f,PyyL(1:151));
    axis(s2,[0 300 -60 60]);
    grid;
    % grid;
    drawnow;
end
