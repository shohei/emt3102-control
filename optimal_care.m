clear; format compact;

A=[0 1
    -10 -1];
B=[0
   1];
x0=[1
    0];
Q=diag([300 60]);
R=1;
P=care(A,B,Q,R)
K=-inv(R)*B'*P


