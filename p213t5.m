Fs = 1000000; % Sampling rate is 8000 samples per second.
Fc = 300000; % Carrier frequency in Hz
t = [0:.001*Fs]'/Fs; % Sampling times for .1 second
x = sin(10000*pi*t); % Representation of the signal
y = modulate(x,Fc,Fs,'fm'); % Modulate x to produce y.
xd=demod(y,Fc,Fs,'fm');

figure;
subplot(3,1,1); plot(t,x); % Plot x on top.
subplot(3,1,2); plot(t,y)% Plot y below
subplot(3,1,3); plot(t,xd)% Plot xd below