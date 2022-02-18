clear
clc

%% %设定字体和字号
text(0,0.5,"一键三连","FontSize",70,"FontName","黑体");
%text(0,0.5,"Happy  New  Year","FontSize",40,"FontName","黑体");

%% 绘图
f=gcf;
a=f.Children;
a.Visible=0;
saveas(f,'temp.jpg')
close all

%% 修剪边框
im=imread('temp.jpg');
BW = rgb2gray(im);
BW=imresize(BW,0.25); %整体缩放比例

BW(BW>100)=255;
BW(BW<=100)=0;

[a,b]=find(BW==0);
BW(max(a):end,:)=[];
BW(1:min(a),:)=[];
BW(:,max(b):end)=[];
BW(:,1:min(b))=[];

temp1=round(size(BW,1)*0.4);
BW=[255*ones(temp1,size(BW,2)) ; BW; 255*ones(temp1,size(BW,2))];
temp2=round(size(BW,2)*0.2);
BW=[255*ones(size(BW,1),temp2)   BW  255*ones(size(BW,1),temp2)];

%% 设定填充
mystrings={'👍' '币' '★'}; %填充字符

%% 开始填充
f=figure;
axis equal
axis([1 size(BW,2) 1 size(BW,1)])
hold on
for i=1:size(BW,1)
    for j=1:size(BW,2)
        if BW(i,j)==0
            text(j,size(BW,1)-i,mystrings{randi([1,length(mystrings)])},'Color',[1 rand(1,2)],'FontSize',10); %绘制字符
            pause(0.0001)
        end
    end
end
