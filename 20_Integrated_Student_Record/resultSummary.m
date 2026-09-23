function [total,average,highest,lowest,passCount,failCount,overall] = resultSummary(marks)
valid=[];
for i=1:length(marks)
    if marks(i)>=0 && marks(i)<=100
        valid(end+1)=marks(i);
    end
end
if isempty(valid)
    total=0; average=0; highest=0; lowest=0; passCount=0; failCount=0; overall="No valid marks";
    return;
end
total=0; highest=valid(1); lowest=valid(1); passCount=0; failCount=0;
for i=1:length(valid)
    total=total+valid(i);
    if valid(i)>highest, highest=valid(i); end
    if valid(i)<lowest, lowest=valid(i); end
    if valid(i)>=40, passCount=passCount+1; else, failCount=failCount+1; end
end
average=total/length(valid);
if failCount==0, overall="Pass"; else, overall="Fail"; end
end
