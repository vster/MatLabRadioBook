% AR filter coefficients
a = [1 -2.2137 2.9403 -2.1697 0.9606];

% AR filter frequency response
freqz(1,a)
title('AR System Frequency Response')

randn('state',1);
x = filter(1,a,randn(256,1));    % AR system output
pyulear(x,4)                     % Fourth-order estimate