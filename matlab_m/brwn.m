a = zeros(1,10001);
er = rand;
if er>0.5
    a(1) = 1;
elseif er<0.5
    a(1) = -1;
end
for n=2:10001
    er = rand;
    if er>0.5
        a(n) = a(n-1)+1;
    elseif er<0.5
        a(n) = a(n-1)-1;
    end
end
histogram(a,50)

b = zeros(3,10001);
er = rand(1,3);
for n=1:3
    if er(n)>0.5
        b(n,1) = 1;
    elseif er(n)<0.5
        b(n,1) = -1;
    end
end
for n=2:10001
    er = rand(1,3);
    for m=1:3
        if er(m)>0.5
            b(m,n) = b(m,n-1)+1;
        elseif er(m)<0.5
            b(m,n) = b(m,n-1)-1;
        end
    end
end
scatter3(b(1,:),b(2,:),b(3,:))
xlabel('x')
ylabel('y')
zlabel('z')
M = moviein(10001);
for n=1:1001
    scatter3(b(1,n),b(2,n),b(3,n),'filled')
    xlim([-150 150])
    ylim([-150 150])
    zlim([-150 150])
    M(n) = getframe;
end
movie(M,1,500);







