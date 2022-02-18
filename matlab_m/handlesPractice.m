x = linspace(0,2*pi,1000);
y = sin(x);
figure
plot(x,y,'r','LineWidth',1)
xlim([0 2*pi])
set(gca,'xtick',[0 pi 2*pi],'xticklabel',{'0','1','2'},'ytick',-1:.5:1,'ycolor','g','xcolor','c','color','k')
set(gcf,'color',[.3 .3 .3])
title('One sine wave from 0 to 2\pi','fontsize',14,'fontweight','b','color','w')
xlabel('x values in terms of \pi','fontsize',12,'color','c')
ylabel('sin(x)','fontsize',12,'color','g')
grid on

