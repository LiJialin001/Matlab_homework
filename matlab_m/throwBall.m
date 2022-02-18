function distance=throwBall(v,theta)
ballHight = 1.5;
G = 9.8;
t = linspace(0,10,10000);
x = v*cos(theta*pi/180)*t;
y = ballHight + v*sin(theta*pi/180)*t - (1/2)*G*t.^2;
ind = find(y<0,1);
distance = x(ind);
end

