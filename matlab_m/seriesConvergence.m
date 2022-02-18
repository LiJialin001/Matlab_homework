clear; clc;
p = 0.99;
k = 1:1000;
geomSeries = p.^k;
G = 1/(1-p);
figure(1);
y = G*ones(1,1000);
plot(k,y,'r')
hold on
sumGeomSeries = cumsum(geomSeries);
plot(k,sumGeomSeries,'b')
xlabel('Index');
ylabel('Sum');
ylim([0 110]);
title('Convergence of geometric series with p=0.99');
legend('Infinite sum’','Finite Sum');

p = 2;
n = 1:500;
pSeries = 1./(n.^p);
sumPSeries = cumsum(pSeries);
P = pi^2/6;
y = P*ones(500,1);
figure(2)
plot(n,y,'r')
hold on;
plot(n,sumPSeries,'b')
title('Convergence of p-series with p=2');
xlabel('Index');
ylabel('Sum');


