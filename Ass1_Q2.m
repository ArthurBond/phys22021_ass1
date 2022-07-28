L = 0.66;
T = 126.5;
mu = 6e-3; % converted to kg
c = sqrt(T/mu);
t = 0*L/c; % <--- this was varied and script was run while hold was on

syms x n

y = symsum((9*L^2/(n*pi)^3)*sin(n*pi/3)*sin(n*pi*x/L)*cos(n*pi*c*t/L),n,1,1);

hold on
fplot(y)

axis([0 0.66 -0.12 0.12])
legend('t=0','t=T/5','t=2T/5','t=3T/5','t=4T/5')
xlabel('x')
ylabel('y(x,t)')