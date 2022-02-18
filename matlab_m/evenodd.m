function [ye,yo] = evenodd(t,y)
% 信号的奇偶分解
% t：time
% y：Analog Signal 
yr = fliplr(y);
ye = 0.5*(y+yr);
yo = 0.5*(y-yr);
end

