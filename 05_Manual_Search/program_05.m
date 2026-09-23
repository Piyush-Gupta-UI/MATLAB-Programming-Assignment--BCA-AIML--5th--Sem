clc; clear;
arr=[5 8 3 8 2 8 9 1]; target=8;
first=-1; occurrences=0;
for i=1:length(arr)
    if arr(i)==target
        occurrences=occurrences+1;
        if first==-1, first=i; break; end
    end
end
% Count all occurrences after locating the first one.
if first~=-1
    occurrences=0;
    for i=1:length(arr)
        if arr(i)==target, occurrences=occurrences+1; end
    end
end

fileID=fopen("output.txt","w");
fprintf(fileID,"Array: "); fprintf(fileID,"%g ",arr); fprintf(fileID,"\nTarget: %g\n",target);
if first==-1
    fprintf(fileID,"Value is absent.\n");
else
    fprintf(fileID,"First position: %d\nOccurrences: %d\n",first,occurrences);
end
fclose(fileID);
disp("Search report saved to output.txt");
