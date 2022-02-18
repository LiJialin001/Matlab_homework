function dydt = vdp2(t,y)
% dydt = [-(8/3)*y(1)+y(2)*y(3);-10*y(2)+10*y(3);-y(2)*y(1)+28*y(2)-y(3)];
% dydt = -t*y/10;
dydt = [y(2);-y(1)+(1-y(1)^2)*y(2)];
end


