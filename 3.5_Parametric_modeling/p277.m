[b,a]=butter(8,0.25);
h=filter(b,a,[1 zeros(1,100)]);
freqz(b,a,128)
