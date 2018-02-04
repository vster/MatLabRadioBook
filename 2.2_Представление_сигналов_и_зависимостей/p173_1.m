% Построение графика спектральной плотности мощности
rand('state',0);
t=0:0.001:0.512;

clf;
hold on;
% figure;
s1=subplot(2,1,1);
s2=subplot(2,1,2);
for i=1:0.01:10
    x=sin(2*pi*50*t)+0.5*sin(2*pi*120*t)+1.5*sin(2*pi*300*t);
    y=x+0.5*randn(size(t))+0.3;
    Y=fft(y);
    Pyy=Y.*conj(Y)/512;
    PyyL=20*log10(Pyy);
    f=1000*(0:255)/512;  
    subplot(s1);
    % clf(s1);
    plot(s1,t,y);
    axis(s1,[0 0.5 -5 5]);
    grid;
    % s2=subplot(2,1,2);
    subplot(s2);
    % clf(s2);
    plot(f,PyyL(1:256))
    axis(s2,[0 500 -50 70]);
    grid;
    % grid;
    drawnow;
end    

