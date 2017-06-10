a = [1 -2.2137 2.9403 -2.1697 0.9606];    % AR filter coefficients
freqz(1,a)                                % AR filter frequency response
title('AR System Frequency Response')

randn('state',1);

% Signal generated from AR filter 
x = filter(1,a,randn(256,1));  

% Fourth-order estimate
pcov(x,4) 
