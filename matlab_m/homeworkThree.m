clear;clc;
% load randomData
% hold on
% plot(x,y,'b.','MarkerSize',15)
% p1 = polyfit(x,y,1);
% p2 = polyfit(x,y,2);
% p3 = polyfit(x,y,3);
% p4 = polyfit(x,y,4);
% [p5,~,mu] = polyfit(x,y,5);
% n = 100:0.1:200;
% y1 = polyval(p1,n);
% y2 = polyval(p2,n);
% y3 = polyval(p3,n);
% y4 = polyval(p4,n);
% y5 = polyval(p5,n,[],mu);
% plot(n,y1,'LineWidth',1)
% plot(n,y2,'LineWidth',1)
% plot(n,y3,'LineWidth',1)
% plot(n,y4,'LineWidth',1)
% plot(n,y5,'k','LineWidth',1)
% title('Polynomial fits to noisy data')
% xlabel('x')
% ylabel('y')
% legend('Order1','Order2','Order3','Order4','Order5')


% I = [0 2 4 6 8 10 12];
% U = [0 2 5 8.2 12 16 21];
% near = interp1(I,U,9,'nearest')
% linear = interp1(I,U,9,'linear')
% pchip = interp1(I,U,9,'pchip')
% makima = interp1(I,U,9,'makima')
%
% clear;
% x = linspace(0,3*pi,100);
% y = exp(-0.5*x).*sin(x);
% plot(x,y,'k','LineWidth',3)
% hold on
% [p1,S1,mu1] = polyfit(x,y,4);
% [p2,S2,mu2] = polyfit(x,y,5);
% y1 = polyval(p1,x,[],mu1);
% y2 = polyval(p2,x,[],mu2);
% plot(x,y1,'b--','LineWidth',1)
% plot(x,y2,'r','LineWidth',1)
% legend('primal','four','five')

h = 0.0001;
x = 0:h:pi;
y = exp(-0.5*x).*sin(2*x);
Y = diff(y)/h;
absY = abs(Y);
minY = min(absY);
ind = find(absY<2e-4);
if Y(ind(1)-100)<0
    disp('min')
else
    disp('max')
end
disp(y(ind(1)))
if Y(ind(end)-100)<0
    disp('min')
else
    disp('max')
end
disp(y(ind(end)))

% clear;
% [t,y] = ode45(@vdp2,[0 50],[1;1;1]);
% figure
% subplot(121)
% plot(t,y(:,1))
% title('x1(t) with respect to t')
% xlabel('t')
% ylabel('x1')
% subplot(122)
% plot(y(:,1),y(:,2))
% title('x1(t) with respect to x2(t)')
% xlabel('x1(t)')
% ylabel('x2(t)')
%
% clf;
% x = -4:0.1:4;
% y = x.^2;
% plot(x,y)
% hold on
% n = randn(1,length(x)) + y;
% plot(x,n,'.','MarkerSize',10)
% p = polyfit(x,n,2);
% y1 = polyval(p,x);
% plot(x,y1,'r')

% clf;
% func=@(x)(cos(4*x).*sin(10*x).*exp(-abs(x)));
% x=-pi:0.001:pi;
% plot(x,func(x));
% hold on
% minx=fminbnd(func,-pi,pi);
% func(minx)
% plot(minx,func(minx),'s');
% h = 0.001;
% x = -pi:h:pi;
% Y = diff(func(x))/h;
% absY = abs(Y);
% minY = min(absY);
% ind = find(absY<1e-1);
% if Y(ind(1)+25)>0
%     disp('min')
%     plot(x(ind(1)),func(x(ind(1))),'b*','MarkerSize',15,'LineWidth',2)
% else
%     disp('max')
%     plot(x(ind(1)),func(x(ind(1))),'rs','MarkerSize',15,'LineWidth',2)
% end
% disp(func(x(ind(1))))
% for n=2:length(ind)
%     if ind(n)-ind(n-1)>5
%         if Y(ind(n)+25)>0
%             disp('min')
%             plot(x(ind(n)),func(x(ind(n))),'b*','MarkerSize',15,'LineWidth',2)
%         else
%             disp('max')
%             plot(x(ind(n)),func(x(ind(n))),'rs','MarkerSize',15,'LineWidth',2)
%         end
%         disp(func(x(ind(n))))
%     end
% end


% clear;
% [t,y] = ode45('vdp2',[0 50],[2;0]);
% subplot(121)
% plot(t,y(:,1))
% xlabel('t')
% ylabel('y')
% title('mu = 1')
% subplot(122)
% plot(y(:,1),y(:,2))
% axis equal
% xlabel('y')
% ylabel('y''')
% title('mu = 1')








