Fs=10000;
Fc=2000;
t=0:1/Fs:2;

s_M=chirp(t,0,2,1000);
subplot(2,2,1);
plot(t(1:2000), s_M(1:2000));
Title('s_M');

s_AM=amod(s_M,Fc,Fs,'amdsb-sc');
subplot(2,2,2);
specgram(s_AM,[],Fs);
Title(' amdsb-sc');

s_SSB_UP=amod(s_M, -Fc, Fs, 'amssb');
subplot(2,2,3);
specgram(s_SSB_UP,[],Fs);
Title(' amssb');

s_FM=amod(s_M, Fc, Fs, 'fm', 500);
subplot(2,2,4);
specgram(s_FM,[],Fs);
Title('fm');

