fc=2E9;
fs=100E9;
tc=gmonopuls('cutoff',fc);
t=-2*tc: 1/fs: 2*tc;
y=gmonopuls(t,fc);
plot(t,y)
