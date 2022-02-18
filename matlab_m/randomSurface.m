clf; clear; clc;
Z0 = rand(5);
[X0,Y0] = meshgrid(1:5);
[X1,Y1] = meshgrid(1:0.1:5,1:0.1:5);
Z1 = interp2(X0,Y0,Z0,X1,Y1,'cubic');
surf(X1,Y1,Z1);
zlim([-0.2 1.2])
colormap(hsv);
shading interp
hold on
contour(X1,Y1,Z1,15)
c.LineWidth = 5;
colorbar
caxis([0 1])








