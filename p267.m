[b,a]=butter(5,0.5);
L2=filternorm(b,a,2,1e-10);


b=remez(30,[.1 .9],[1 1],'Hilbert');
Linf=filternorm(b,1,inf);