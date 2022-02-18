figure
x = 0:0.1:100;
y1 = x.^3;
y2 = x;
subplot(231)
plot(x,y1)
title('plot: y=x^3')
subplot(232)
loglog(x,y1)
title('loglog: logy=3logx')
subplot(233)
plotyy(x,y1,x,y2)
title('plotyy: y=x^3, y=x')
subplot(234)
semilogx(x,y1)
title('semillogx: 3logx')
subplot(235)
semilogy(x,y1)
title('semillogy: logy=x^3')