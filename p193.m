t= 0: .00001: .005;
d=[0: .001: .01; 0.5.^(0:10)]';
y=pulstran(t,d,@gauspuls,5000,.5);
plot(t,y)
