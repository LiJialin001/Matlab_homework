clear;
load optionalData
smoothed = rectFilt_m(x,2);
plot(x(:,1),x(:,2),'.','MarkerSize',20)
hold on
plot(smoothed(:,1),smoothed(:,2),'--','LineWidth',3)
vq = interp1(smoothed(:,1),smoothed(:,2),0:0.1:10);
plot(0:0.1:10,vq,'k')