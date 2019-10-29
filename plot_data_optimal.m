figure(1);
plot(out.t,out.x(:,1));
grid;
xlabel('t[s]');
ylabel('x1(t) [m]');
figure(2);
plot(out.t,out.x(:,2));
grid;
xlabel('t[s]');
ylabel('x2(t) [m/s]');

