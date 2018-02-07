w=hamming(20);
w=w/sum(w);
[h,f]=freqz(w,1,[],20);
plot(f,20*log10(abs(h)))
grid on
