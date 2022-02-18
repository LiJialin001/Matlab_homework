%%
%  y(t) = 3r(t+3) - 6r(t+1) + 3r(t) - 3u(t-3)
clear; clf;
Ts = 0.01; t = -5: Ts: 5;
% ramp signals
y1 = ramp(t,3,3);
y2 = ramp(t,-6,1);
y3 = ramp(t,3,0);
% ustep signals
y4 = -3*ustep(t,-3);
y = y1+y2+y3+y4;
plot(t, y, 'k');   axis([-5 5 -1 7]);  grid;

%%
clear;
syms x n l
A = (x*(10+x)/1000)*sin(n*pi*x/l);
Cn = 2/l*int(A,x,0,l);
Cn = subs(Cn,sin(pi*n),0);
Cn = simplify(Cn);
pretty(Cn)
%%


