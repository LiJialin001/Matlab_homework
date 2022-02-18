% rng(0,'twister');
% a = 5;
% b = 2;
% rvector = a.*randn(1,500) + b;
% rmean = mean(rvector)
% rstd = std(rvector)

clear;clc;
% v = poissrnd(5,1,1000000);
% histogram(v,'Normalization','probability')
% hold on
% y = poisspdf(min(v):max(v),5);
% plot(min(v):max(v),y,'r','LineWidth',3)
% title('Possion distribution and observed hidtogram')
% xlabel('value')
% ylabel('probability')
% 
% fun = @(x) x.*exp(-x./3);
% q = integral(fun,0,5);
% % disp(-24*exp(-5/3)+9-q);
% 
% cellProblem = {'Joe','Smith',30000;'Sarah','Brown',150000;'Par','Jackson',120000};
% disp(cellProblem)
% cellProblem{2,2} = 'Meyers';
% sprintf('%s %s %u',cellProblem{1,:})
% sprintf('%s %s %u',cellProblem{2,:})
% sprintf('%s %s %u',cellProblem{3,:})
% cellProblem{3,3} = cellProblem{3,3} + 50000;
% A = ones(3,3);
% A = (cellProblem);
% disp(A)
% 
% a = dir;
% for n=1:size(a)
%     if a(n).isdir == 0
%         disp(['File ' a(n).name ' contains ' num2str(a(n).bytes) ' bytes'])
%     end
% end
% 
% 
% a = struct('name',{'Tom','Jerry','King'},'adj',{'handsome','smart','strong'});
% r = randi([1 3],1,2);
% disp([getfield(a,{r(1)},'name') ' is ' getfield(a,{r(2)},'adj')])
















