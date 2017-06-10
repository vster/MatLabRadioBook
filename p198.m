fs=100;
t=0:.001:2;
x=vco(sawtooth(2*pi*t,0.75),[0.1 0.4]*fs,fs);
specgram(x,512,fs,kaiser(256,5),220)