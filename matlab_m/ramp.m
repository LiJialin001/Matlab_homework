function y = ramp(t, m, ad)
% generate ramp signal
% t: time support
% m: slope
% ad: advance coefficient

N = length(t);
y = zeros(1,N);
for i=1:N
    if t(i)>= -ad
        y(i) = m*(t(i) + ad);
    end
end
end

