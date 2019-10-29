clear; close all;
s=tf('s');
G=1/(s^2+s+1);
K=1
step(K*G/(1+K*G));
c1=uicontrol('style','slider','max',100,'min',0);
set(c1,'callback','callback');
