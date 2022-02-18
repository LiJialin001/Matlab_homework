clf;clear;
[t,y] = ode45(@vdp,[0 50],[5;-6;-2;8]);
figure
subplot(121)
plot(t,y(:,1))
hold on
plot(t,y(:,3))
title('u(t), v(t) with respect to t')
xlabel('t')
subplot(122)
plot(y(:,1),y(:,2))
hold on
plot(y(:,3),y(:,4))
title('u’/v’ with respect to u/v')
xlabel('u/v')
ylabel('u''/v''')