syms x m t

F = symsum(1/(pi*m)*(1+cos(2*m*pi/3)-2*cos(4*m*pi/3))*sin((pi/3*m)*t)+1/(pi*m)*(2*sin(4*m*pi/3)-sin(2*m*pi/3))*cos((pi/3*m)*t), m, 1, 500);

hold on

fplot(heaviside(x-2),[0,4],'b');
line([4 4], [-1 1],'Color','b');
line([4 6], [-1 -1],'Color','b');

fplot(F)

hold off

axis([0 6 -1.2 1.2])
xlabel('t')
ylabel('f(t)')