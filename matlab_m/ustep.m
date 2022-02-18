function y = ustep(t,ad)
% generate ustep signal
% t: time support
% ad: advance coefficient
N = length(t);
y = zeros(1,N);
for i = 1:N
    if t(i) >= -ad
        y(i) = 1;
    end
end
end

