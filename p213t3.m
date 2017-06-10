Fs = 8000; % Sampling rate is 8000 samples per second.
Fc = 300; % Carrier frequency in Hz
t = [0:.1*Fs]'/Fs; % Sampling times for .1 second
x = (1+0.8*sin(2*20*pi*t))/2; % Representation of the signal
mt='am';
y = modulate(x,Fc,Fs,mt); % Modulate x to produce y.
xd=demod(y,Fc,Fs,mt);

figure;
subplot(3,1,1); plot(t,x); % Plot x on top.
subplot(3,1,2); plot(y)% Plot y below
subplot(3,1,3); plot(t,xd)% Plot xd below