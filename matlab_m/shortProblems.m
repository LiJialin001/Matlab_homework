clear; clc;
a = 10
b = 2.5*10^23
c = 2 + 3i
d = exp((2*pi/3)*1i)


aVec = [3.14 15 9 26]
bVec = [2.17; 8; 28; 182]
cVec = 5: -0.2 : -5
dVec = logspace(0,1,101)
eVec = 'Hello'


aMat = 2*ones(9,9)
v = [1 2 3 4 5 4 3 2 1];
bMat = diag(v)
A = 1:100;
cMat = reshape(A,[10,10])
dMat = nan(3,4)
eMat = [13 -1 5;-22 10 -87]
fMat = randi([-3,3],5,3)

x = 1/(1 + exp(-((a-15)/6)))
y = (a^(1/2) + b^(1/21))^pi
z = log(real((c+d)*(c-d))*sin(a*pi/3))/c*c'

xMat = (aVec*bVec)*(aMat)^2
yMat = (bVec*aVec)
zMat = det(cMat)*(aMat*bMat).'

cSum =  sum(cMat)
eMean = mean(eMat,2)
eMat(1,:) = [1 1 1] 
cSub = cMat(2:9,2:9)
lin = 1:20;
rlin = ones(20,1);
rlin(2:2:end) = -1;
lin = lin.*rlin'
r = rand(1,5);
ind = find(r<0.5);
r(ind) = 0







