
% tau = 0.75*3600;
% endOfClass = 30*3600;
% k = 1 - exp(-tau/endOfClass);
% knowledgeAtEnd = 1 - exp(-endOfClass/endOfClass);
% strOne = ['At the end of class, I know ' num2str(100*k) '% of MATLAB.'];
% strTwo = ['At the end of class, I know ' num2str(100*knowledgeAtEnd) '% of MATLAB.'];
% disp(strOne)
% disp(strTwo)
% 


% secPerMin = 60;
% secPerHour = 3600;
% secPerDay = 3600*24;
% secPerMonth = secPerDay*30.5;
% secPerYear = secPerMonth*12;
% secondConversion = [secPerYear secPerMonth secPerDay secPerHour secPerMin 1];
% currentTime = clock;
% start = [2021,9,6,10,32,59.4110];
% elapsedTime = currentTime - start;
% t = elapsedTime * secondConversion';
% k = 1 - exp(-t/(30*3600));
% str = ['At this time I know ' num2str(k*100) '% of MATLAB.'];
% disp(str)

% endOfClass = 30*3600;
% tVec = linspace(0, endOfClass, 10000);
% o = ones(1,10000);
% endO = endOfClass * o;
% knowledgeVec = o - exp(-tVec./endO);
% knowledgeVec

% themin = min(abs(knowledgeVec - 0.5));
% minIndex = find(abs(knowledgeVec - 0.5) == themin);
% halfTime = tVec(minIndex);
% str = ['I will know half of MATLAB after ' num2str(halfTime/secPerDay) 'day.']


% 
% figure(1)
% plot(tVec/secPerDay, knowledgeVec)
% axis tight
% xlabel('days')
% ylabel('knowledge')
% title('Knowledge Curve')
























