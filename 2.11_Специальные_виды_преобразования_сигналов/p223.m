x=(1:100)+50*cos((1:100)*2*pi/40);
X=dct(x);
[XX,ind]=sort(abs(X));
ind=fliplr(ind);
i=1;
while (norm([X(ind(1:i)) zeros(1,100-i)])/norm(X)<.999)
    i=i+1;
end
    