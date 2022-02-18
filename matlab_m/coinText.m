clf;clear;
hold on
t = 1:5000;
r = rand(1,5000);
sumr = cumsum(r);
pHead = sumr./t;
plot(t,pHead,'LineWidth',1)
plot(t,0.5*ones(1,5000),'r','LineWidth',1)
legend('actual','expected')
ylim([0 1])
