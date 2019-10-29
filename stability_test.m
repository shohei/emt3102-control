clear;close all;
% G1=1/(s^3+s^2+1.5*s+1);
% nyquist(G1);
% axis equal;
% 
% figure();
% G2=1/(s^3+2*s^2+2*s+1);
% nyquist(G2);
% axis equal;

% s=tf('s');
% G=1/(s^3+s^2+1.5*s+1);
% K1=0.4;K2=0.5;K3=0.7;
% L1=K1*G;L2=K2*G;L3=K3*G;
% p = nyquistoptions;
% p.ShowFullContour = 'off'; 
% nyquistplot(L1,p);
% axis equal;hold on;
% nyquistplot(L2,p);axis equal;
% nyquistplot(L3,p);axis equal;
% n = 1000; % Number of points on circle
% theta = linspace(0, 2*pi, n);
% x = cos(theta);y = sin(theta);
% plot(x, y,'g-'); % Unit circle
% axis equal;
% legend('k=0.4','k=0.5','k=0.7','unit circle');

% s=tf('s');
% G=1/(s^3+s^2+1.5*s+1);
% K1=0.4;K2=0.5;K3=0.7;
% L1=K1*G;L2=K2*G;L3=K3*G;
% bode(L1,L2,L3);
% legend('k=0.4','k=0.5','k=0.7');
% grid();

% s=tf('s');
% kp=[0.5 1 2];
% P=1/(s^2+s+1);
% T1=kp(1)*P;T2=kp(2)*P;T3=kp(3)*P;
% margin(T1);hold on;
% margin(T2);margin(T3);
% legend('kp=0.5','kp=1','kp=2');
% grid();
% 
% 
% step(T1,T2,T3);
% legend('kp=0.5','kp=1','kp=2');
% figure();


% s=tf('s');
% kp=2;
% ki=2;
% kd=[0 0.1 0.2];
% P=1/(s^2+s+1);
% T1=(kp+ki/s+kd(1)*s)*P;
% T2=(kp+ki/s+kd(2)*s)*P;
% T3=(kp+ki/s+kd(3)*s)*P;
% margin(T1);hold on;
% margin(T2);margin(T3);
% legend('kd=0','kd=0.1','kd=0.2');
% grid();


% s=tf('s');
% a=10;
% T1=0.1;
% K1=a*(T1*s+1)/(a*T1*s+1);
% bode(K1);
% grid();


% s=tf('s');
% b=0.1;
% T2=1;
% K2=(T2*s+1)/(b*T2*s+1);
% bode(K2);
% grid();

% g=9.8
% l=0.2
% M=0.5
% mu=1.5e-2
% J=1e-2
% P=1/(J*s^2+mu*s+M*g*l)


s=tf('s');
P=1/(s^2+0.5*s+1);
K1=(5*s+20)/(5*s+1);
beta=(1-sin(65/180*pi))/(1+sin(65/180*pi));
T2=1/(40*sqrt(beta));
K2=(T2*s+1)/(beta*T2*s+1);
k=10^(50.9/20);
% margin(P*K1*K2*k);grid();
T=P*K1*K2*k;
step(P,T/(1+T));grid();
legend('Plant open loop','Lag-lead compensation');
figure();
bode(P,T/(1+T));grid();
legend('Plant open loop','Lag-lead compensation');

































