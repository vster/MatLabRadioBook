N=65;
w=window(@Blackmanharris,N);
ww1=window(@hamming,N);
ww2=window(@gausswin,N,2.5);
subplot(1,1,1);
plot(1:N,[w,ww1,ww2]);
axis([1 N 0 1]);
legend('Blackman-Harris','Hamming','Gaussian');
