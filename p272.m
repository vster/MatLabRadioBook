load mtlb;
Ao=lpc(mtlb(1000:1100),12);
Ax=polyscale(Ao,.85);

subplot(2,2,1);
zplane(1,Ao);
title('Original');

subplot(2,2,3);
zplane(1,Ax);
title('Flattened');

[ho,w]=freqz(1,Ao);
[hx,w]=freqz(1,Ax);

subplot(1,2,2);
plot(w,abs(ho),w,abs(hx));
legend('Original','Flattend')