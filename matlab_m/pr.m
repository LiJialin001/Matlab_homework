close all;
clear all;
clc;
[NUM]=xlsread('Book1.xls');
figure(1);
plot(NUM);
figure(2);
N=length(NUM);
n=0:N-1;
fs=8000;
y=fft(NUM,N);    %对信号进行快速Fourier变换
mag=abs(y);     %求得Fourier变换后的振幅
f=n*fs/N;    %频率序列
plot(f(1:N/2),mag(1:N/2)); %绘出Nyquist频率之前随频率变化的振幅
xlabel('频率/Hz');
ylabel('振幅');
