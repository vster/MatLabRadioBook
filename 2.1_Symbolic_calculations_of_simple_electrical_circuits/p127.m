syms a b c;
M=diag([a b c],1)

X=[a b c; b c a; c b a];
triu(X)
triu(M,1)