function displayDir()
a = dir;
size(a)
for n=1:size(a)
    if a(n).isdir == 0
        disp(['File ' a(n).name ' contains ' num2str(a(n).bytes) ' bytes'])
    end
end
end


