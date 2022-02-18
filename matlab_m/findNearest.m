% function [outputArg1,outputArg2] = untitled10(inputArg1,inputArg2)
% %UNTITLED10 此处显示有关此函数的摘要
% %   此处显示详细说明
% outputArg1 = inputArg1;
% outputArg2 = inputArg2;
% end

function ind = findNearest(x, desiredVal)
temp = x-desiredVal;
Tvector = temp(:);
Tvector = abs(Tvector);
minOne = min(Tvector);
ind = find(Tvector==minOne);

end
