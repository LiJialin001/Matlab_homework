% function [outputArg1,outputArg2] = untitled12(inputArg1,inputArg2)
% %UNTITLED12 此处显示有关此函数的摘要
% %   此处显示详细说明
% outputArg1 = inputArg1;
% outputArg2 = inputArg2;
% end
% 

function loopTest(N)
for n=1:N
    if mod(n,2) == 0 && mod(n,3) == 0
        disp([num2str(n) ' is divisible by 2 AND 3.']);
    elseif mod(n,3) == 0
        disp([num2str(n) ' is divisible by 3.']);
    elseif mod(n,2) == 0
        disp([num2str(n) ' is divisible by 2.']);
    else
        disp([num2str(n) ' is NOT divisible by 2 or 3.'])
    end
end

end