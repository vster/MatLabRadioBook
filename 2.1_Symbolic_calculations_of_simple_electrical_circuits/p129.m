syms a b c d;
A=[a b; c d]
simplify(eig(A))
[V,D]=eig(A)
[V,D,P]=eig(A)

M=[1 2 3; 4 5 6; 9 8 7];
L=eig(M)
[V,D]=eig(M)
[V,D,P]=eig(M)