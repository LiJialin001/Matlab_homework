close all
b=[2];
a=([1 2]);
SYS=tf(b,a);
pzplot(SYS);
axis([-4,4 -2,2]);
figure;
freqs(b,a);
