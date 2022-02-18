clear; clc;
load classGrades
disp(namesAndGrades(1:5,:))
grades = namesAndGrades(:,2:end);
meanGrades = nanmean(grades);
meanMatrix = ones(38,1)*meanGrades;
curvedGrades = 60*(grades./meanMatrix);
meancurvedGrades = nanmean(curvedGrades);
disp(meancurvedGrades)
[row,col] = find(curvedGrades>100);
curvedGrades(row,col) = 100;
totleGrade = ceil(nanmean(curvedGrades,2));
letter = 'IHGFEDCBA';
indexs = totleGrade-min(totleGrade) + 1;
letterGrades(1:38) = letter(indexs); 
str = ['Grades:',letterGrades];
disp(str)

    










