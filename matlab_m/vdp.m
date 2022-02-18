function dydt = vdp(t,y)
dydt = [y(2);-2*t*y(4)-y(1)*exp(-5*t);y(4);t*y(2)-3*y(3)*exp(-2*t)];



