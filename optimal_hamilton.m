n=2;
H=[A -B*inv(R)*B'
    -Q -A']

[V Lambda]=eig(H);
Lambda

num=0;
for i=1:2*n
    lambda=Lambda(i,i);
    if real(lambda)<0
        num = num+1;
        V1(1:n,num) = V(1:n,i);
        V2(1:n,num) = V(n+1:2*n,i);
    end
end

V1,V2
P=V2/V1

lambda=[Lambda(3,3) Lambda(4,4)];
K=-acker(A,B,lambda)

        