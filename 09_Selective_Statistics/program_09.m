clc; clear;
arr=[5 -2 0 7 -1 10 0 3];
count=0; total=0;
for i=1:length(arr)
    if arr(i)<=0
        continue;
    end
    count=count+1; total=total+arr(i);
end
fileID=fopen("output.txt","w");
fprintf(fileID,"Positive count: %d\nPositive sum: %g\n",count,total);
if count>0, fprintf(fileID,"Positive average: %.2f\n",total/count);
else, fprintf(fileID,"No positive value exists.\n"); end
fclose(fileID);
disp("Report saved to output.txt");
