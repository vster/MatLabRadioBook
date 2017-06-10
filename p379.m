% QASK modulation
M=8;
len=10000;
Fd=1;
Fs=3;
signal=randint(len,1,M);
modsignal(:,1)=dmodce(signal,Fd,Fs,'qask',M);
inphase=[-3:2:3 -3:2:3];
quadr=[ones(1,4), -1*ones(1,4)];
modsignal(:,2)=dmodce(signal,Fd,Fs,'qask/arb',inphase,quadr);
noisy=modsignal+0.5*randn(len*Fs/Fd,2)+i*0.5*randn(len*Fs/Fd,2);

% Demodulate
newsignal(:,1)=ddemodce(noisy(:,1),Fd,Fs,'qask',M);
newsignal(:,2)=ddemodce(noisy(:,2),Fd,Fs,'qask/arb',inphase,quadr);
