[b,a]=butter(4,.3);
gd=grpdelay(b,a,512);
gd(1)=[];
[h,w]=freqz(b,a,512);
h(1)=[];
w(1)=[];
pd=-unwrap(angle(h))./w;
plot(w,gd,w,pd,':')
xlabel('Frequency (rad/sec)');grid;
legend('Group Delay','Phase Delay');
