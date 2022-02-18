clf; clear; clc;
figure(2);
[x,y] = getCircle([-1,0],0.4);
plot(x,y,'b','LineWidth',10)
hold on
[x,y] = getCircle([-0.5,-0.5],0.4);
plot(x,y,'y','LineWidth',10)
hold on
[x,y] = getCircle([0,0],0.4);
plot(x,y,'k','LineWidth',10)
hold on
[x,y] = getCircle([0.5,-0.5],0.4);
plot(x,y,'g','LineWidth',10)
hold on
[x,y] = getCircle([1,0],0.4);
plot(x,y,'r','LineWidth',10)
hold on