clf; clear all
syms t  y  z  
y = cos(t ^ 2);
z = diff(y);       %求导
figure(1)
subplot(2,1,1)
ezplot(y, [0,2*pi]);  grid
hold on 
subplot(2,1,2)
ezplot(z, [0, 2*pi]);   grid
hold on

Ts = 0.1;       %抽样间隔
t1 = 0:Ts:2*pi;   
y1 = cos(t1.^2);      % t1 and y1 are Vectors
z1 = diff(y1) ./ diff(t1);   %  difference
figure(2)
subplot(2,1,1)
stem(t1,y1,'k');  axis([0 2*pi 1.1*min(y1) 1.1*max(y1)])
subplot(2,1,2)
stem(t1(1: length(y1)-1),z1,'k');   axis([0 2*pi 1.1*min(z1) 1.1*max(z1)])     
legend('Derivative(blue)', 'Difference(black)')
hold off


