clear; clc;
figure
t = linspace(0,2*pi,100000);
plot(t,sin(t));
hold on
plot(t,cos(t),'g--','LineWidth',2);
xlabel('x')
ylabel('y')
title('SinandCos')
legend('sin(x)','cos(x)')
xlim([0 2*pi])
ylim([-1.4 1.4])

