clc; clear;
arr = [12 45 7 45 30 12 50 50 18];

hasMax = false; maxVal = 0;
for i=1:length(arr)
    if ~hasMax || arr(i)>maxVal
        maxVal=arr(i); hasMax=true;
    end
end
hasSecond=false; second=0;
for i=1:length(arr)
    if arr(i) ~= maxVal && (~hasSecond || arr(i)>second)
        second=arr(i); hasSecond=true;
    end
end

fileID=fopen("output.txt","w");
fprintf(fileID,"Input array: "); fprintf(fileID,"%g ",arr); fprintf(fileID,"\n");
if hasSecond
    fprintf(fileID,"Second largest distinct value: %g\n",second);
else
    fprintf(fileID,"No second distinct value exists.\n");
end
fclose(fileID);
disp("Result saved to output.txt");
