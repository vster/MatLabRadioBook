t=[0 0.5 1.0 1.5 2.0];
f=[0 200 100 150 300];
p=polyfit(t,f,4);
t=0:0.001:2;
y=chirp(t,p);

subplot(211);
plot(t,polyval(p,t));
set (gca,'ylim',[0 500]);

subplot(212);
specgram(y,128,1E3,128,120);

