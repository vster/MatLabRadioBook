N=64;
w=blackmanharris(N);
y=nuttallwin(N);

subplot(1,2,1);
plot(1:N,w,1:N,y,'r--');
axis([1 N 0 1]);
title('Comparison of 64-pt windows');
legend('Blackman-harris', 'Nutall');

subplot(1,2,2);
plot(y-w);
title('Difference between Blackman-harris and Nuttall windows')

