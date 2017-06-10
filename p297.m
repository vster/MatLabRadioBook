[b,a]=butter(5,0.5,'s');
[bz,az]=impinvar(b,a,100,.01);

[y,t]=impz(bz,az,101);
plot(t,y);
freqz(bz,az);