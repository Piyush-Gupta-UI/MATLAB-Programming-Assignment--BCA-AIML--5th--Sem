function [average, highest, passCount, failCount, valid] = analyzeMarks(marks)
valid=[];
for i=1:length(marks)
    if marks(i)>=0 && marks(i)<=100
        valid(end+1)=marks(i);
    end
end
passCount=0; failCount=0; average=0; highest=0;
if isempty(valid), return; end
total=0; highest=valid(1);
for i=1:length(valid)
    total=total+valid(i);
    if valid(i)>highest, highest=valid(i); end
    if valid(i)>=40, passCount=passCount+1; else, failCount=failCount+1; end
end
average=total/length(valid);
end
