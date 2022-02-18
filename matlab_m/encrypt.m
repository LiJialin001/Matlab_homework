clear; clc;
original = 'This is my top secret message!';
Rvector = randperm(length(original));
encoded = original(Rvector);
Temp = zeros(length(original),2);
Temp(:,1) = Rvector';
Temp(:,2) = 1:length(original);
Temp = sortrows(Temp);
decoded = Temp(:,2);
decoded = encoded(decoded);
disp(['original: ' original])
disp(['encoded: ' encoded])
disp(['decoded: ' decoded])
correct = strcmp(original,decoded);
disp(['Display the following string: Decoded correctly (1 true, 0 false): ' num2str(correct)])


