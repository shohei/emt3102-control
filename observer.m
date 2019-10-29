clear; format compact;
M1=0.5;
M2=1;
k=2;
mu=1;
A=[0 1 0 0 
    -k/M1 -mu/M1 k/M1 mu/M1
    0 0 0 1
    k/M2 mu/M2 -k/M2 -mu/M2];
B=[0
    1/M1
    0 
    0];
C=[0 0 1 0];

p(1)=-2+2j;
p(2)=-2-2j;
p(3)=-2+j;
p(4)=-2-j;

K=-acker(A,B,p);
M0=[A B
    C 0];
H=[-K 1]*inv(M0)*[zeros(4,1)
                  1]

eig(A+B*K)

q(1)=-4+4j; 
q(2)=-4-4j;
q(3)=-4+2j;
q(4)=-4-2j;

L=-acker(A',C',q)';
eig(A+L*C)

Acl=[A B*K
    -L*C A+B*K+L*C];

eig(Acl)

N=1.5%difference from nominal value
M1v=N*M1;
M2v=N*M2;

Av=[0 1 0 0
    -k/M1v -mu/M1v k/M1v mu/M1v
    0 0 0 1
    k/M2v mu/M2v -k/M2v -mu/M2v];
Bv=[0
    1/M1v
    0 
    0];

x0=[-0.5 0 0.5 0]';
    



    
