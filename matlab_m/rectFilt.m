function smoothed=rectFilt(x,width)
smoothed = x;
if mod(x, 2) == 0
    width = width+1;
    disp('width must an odd!')
end
% conver = (conv(ones(1,width),x)./width);
% smoothed(ceil(width/2):(length(x)-floor(width/2))) = conver(width:end-width+1);
for n=ceil(width/2):(length(x)-floor(width/2))
   smoothed(n) = mean(x(n-floor(width/2):n+floor(width/2)));
end

end

