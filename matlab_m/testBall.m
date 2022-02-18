clear;clc;
v = 4;
thetas = linspace(0,60,500);
distances = ones(1,500);
for n=1:500
    distances(n) = throwBall(v,thetas(n));
end
plot(thetas,distances,'r','LineWidth',2)
title('Distance of ball throw as a function of release angle (v=4 m/s)')
xlabel('Initial Angle (deg)')
ylabel('Destance throwm (m)')