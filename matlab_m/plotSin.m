% function [outputArg1,outputArg2] = untitled5(inputArg1,inputArg2)
% %UNTITLED5 此处显示有关此函数的摘要
% %   此处显示详细说明
% outputArg1 = inputArg1;
% outputArg2 = inputArg2;
% end

function plotSin(f1,f2)
x = linspace(0,2*pi,1000);
y = linspace(0,2*pi,1000);
[X,Y] = meshgrid(x,y);
if nargin == 1 
    figure(1)
    plot(x,sin(f1*x),'s--','LineWidth',2,'Color','r','MarkerFaceColor','k');
    str1 = ['y = sin(' num2str(f1) '*x)'];
    title(str1)
else
    Z = sin(f1*X) + sin(f2*Y);
    figure(2)
    subplot(211)
    imagesc(Z)
    colormap(hot)
    
    axis xy
    subplot(212)
    surf(X,Y,Z)
%     mesh(X,Y,Z)
%     colormap(hot)
%     axis xy

    
end
end

%     subplot(211)
%     plot(x,sin(f1*x),'s--','LineWidth',2,'Color','r','MarkerFaceColor','k');
%     str1 = ['y = sin(' num2str(f1) '*x)'];
%     title(str1)
%     subplot(212)
%     plot(x,sin(f2*x),'s--','LineWidth',2,'Color','r','MarkerFaceColor','k');
%     str2 = ['y = sin(' num2str(f2) '*x)'];
%     title(str2)