% x = -9:0.1:9;
% y=x;
% [X,Y] = meshgrid(x,y);
% R = sqrt(X.^2 + Y.^2);
% Z = sin(R)./R;
% h = surfc(X,Y,Z);
% M = moviein(20);
% for i = 1:20
%     rotate(h,[0 0 1],15);
%     M(i) = getframe;
% end
% movie(M,10,6);




%
% x = linspace(0,2*pi,500);
% y = sin(2*x);
% plot(x,y)
% hold on;
% z = y;
% z(y>=0) = 1;
% z(y<0) = -1;
% plot(x,z,'LineWidth',5)


% R3 = 12;
% R = [5 25 R3 6 15];
% A = [1 -1 -1 0 0;0 0 1 -1 -1;R(1) R(2) 0 0 0;0 R(2) -R(3) -R(4) 0;0 0 0 R(4) -R(5)];
% b = [0 0 110 0 45];
% I = A\b';
% I = ones(5,1000);
% R3 = linspace(0.1,100,1000);
% for n = 1:1000
%     R = [5 25 R3(n) 6 15];
%     A = [1 -1 -1 0 0;0 0 1 -1 -1;R(1) R(2) 0 0 0;0 R(2) -R3(n) -R(4) 0;0 0 0 R(4) -R(5)];
%     b = [0 0 110 0 45];
%     I(:,n) = A\b';
% end
% plot(R3,I,'LineWidth',2)


% P1 = [1 -3 0 1 2];
% P2 = [1 -2 0 4];
% polP1 = polyder(P1)
% polP1P2 = polyder(P1,P2)
% [pol1,pol2] = polyder(P2,P1)
% x = [0 2 4 6 8];
% val = polyval(P1,x)
% r = roots(P1)


[X,Y] = meshgrid(0:5:25,0:5:15);
%Y = meshgrid(0:5:15);
[X1,Y1] = meshgrid(0:0.2:25,0:0.1:15);
%Y1 = meshgrid(0:0.1:15);
Z = [30 32 34 33 32 31 ;
    33 37 41 38 35 33 ;
    35 38 44 43 37 34 ;
    32 34 36 35 33 32];
Z1 = interp2(X,Y,Z,X1,Y1,'cubic');
surf(X1,Y1,Z1);
Z2 = interp2(X,Y,Z,2.6,7.2)
















