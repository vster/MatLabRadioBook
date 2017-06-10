fs=1000;
t=0:1/fs:2;
x=vco(cos(2*pi*t),[10 450],fs);
strips(x,0.25,fs)