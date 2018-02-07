x=[1 zeros(1,59)];
[b,a]=butter(10,.4);
y=filter(b,a,x);
stem(y)
