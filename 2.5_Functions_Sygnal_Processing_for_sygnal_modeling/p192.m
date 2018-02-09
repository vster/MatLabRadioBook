tc=gauspuls('cutoff',50E3,.6,[],-40);
t=-tc:1E-6:tc;
yi=gauspuls(t,50E3,.75);
plot(t,yi);
