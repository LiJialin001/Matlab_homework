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
y=fft(NUM,N);    %���źŽ��п���Fourier�任
mag=abs(y);     %���Fourier�任������
f=n*fs/N;    %Ƶ������
plot(f(1:N/2),mag(1:N/2)); %���NyquistƵ��֮ǰ��Ƶ�ʱ仯�����
xlabel('Ƶ��/Hz');
ylabel('���');
