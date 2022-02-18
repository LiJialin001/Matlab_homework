clear;
ballHight = 1.5;
G = 9.8;
velocityOfBall = 4;
Angle = 45;
t = linspace(0,1,1000);
x = velocityOfBall*cos(Angle*pi/180)*t;
y = ballHight + velocityOfBall*sin(Angle*pi/180)*t - (1/2)*G*t.^2;
ind = find(y<0,1);
xGround = x(ind);
str = ['The ball hits the ground at a distance of ' num2str(xGround) 'meters.'];
disp(str)
figure
plot(x, y)
xlabel('height');
ylabel('distance');
hold on
z = zeros(1,1000);
plot(x,z,'k--')
xlim([0 max(x)])

