clc; clear;

marks = [78 65 92 45 101 -5 88 39 72];

valid = [];
for i = 1:length(marks)
    if marks(i) >= 0 && marks(i) <= 100
        valid(end+1) = marks(i);
    end
end

passCount = 0;
failCount = 0;
total = 0;

if isempty(valid)
    average = 0; highest = 0; lowest = 0;
else
    total = sum(valid);
    average = total / length(valid);
    highest = valid(1);
    lowest = valid(1);
    for i = 1:length(valid)
        if valid(i) > highest, highest = valid(i); end
        if valid(i) < lowest, lowest = valid(i); end
        if valid(i) >= 40
            passCount = passCount + 1;
        else
            failCount = failCount + 1;
        end
    end
end

fileID = fopen("output.txt","w");
fprintf(fileID,"Student Result Analyzer\n");
fprintf(fileID,"Valid marks: ");
fprintf(fileID,"%g ",valid);
fprintf(fileID,"\nTotal: %g\nAverage: %.2f\nHighest: %g\nLowest: %g\n",total,average,highest,lowest);
fprintf(fileID,"Pass: %d\nFail: %d\n",passCount,failCount);
fclose(fileID);

disp("Analysis completed. See output.txt");
