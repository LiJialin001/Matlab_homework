clf; clear; clc;
figure(1);
c = jet(5);
[x,y] = getCircle([0,0],5);
plot(x,y,'LineWidth',10,'Color',c(1,:))
hold on
[x,y] = getCircle([0,0],10);
plot(x,y,'LineWidth',7,'Color',c(2,:))
hold on
[x,y] = getCircle([0,0],15);
plot(x,y,'LineWidth',5,'Color',c(3,:))
hold on
[x,y] = getCircle([0,0],20);
plot(x,y,'LineWidth',3,'Color',c(4,:))
hold on
[x,y] = getCircle([0,0],22);
plot(x,y,'LineWidth',2,'Color',c(5,:))
hold on



