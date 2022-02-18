clear;clc;
K = 50e-6;
Vgs = [0 1 2 3 4 5];
Vds = linspace(0,5,1000);
Vt = ones(1,6);
% Ids = ones(length(Vds),6);
difference = Vgs-Vt;
inds = find(difference<=0);
%difference(inds) = 0;
Ids = K*(Vds'*difference-0.5*(Vds.^2)'*ones(1,6));
for n=1:6
    index = find(Vds>difference(n));
    Ids(index,n) = 0.5*K*difference(n)^2;
end
Ids(:,inds) = 0;
Ids = 10^6*Ids;
plot(Vds,Ids,'LineWidth',2)
title('Transistor Drain Current')
ylim([0 500])
xlabel('Vds (V)')
ylabel('Ids (µA)')
legend('Vgs=0V','Vgs=1V','Vgs=2V','Vgs=3V','Vgs=4V','Vgs=5V')




