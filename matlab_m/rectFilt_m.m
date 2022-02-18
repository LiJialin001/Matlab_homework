function smoothed=rectFilt_m(x,width)
smoothed = x;
unChange = x(:,1);
change = x(:,2);
v=0:width:10;
for n=1:20
    ind = find(unChange>(unChange(n)-width/2) & unChange<(unChange(n)+width/2));
    change(n) = sum(change(ind))/length(ind);
end
smoothed(:,2) = change;
end






