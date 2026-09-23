clc; clear;
inID=fopen("numbers.txt","r"); outID=fopen("output.txt","w");
if inID==-1
    fprintf(outID,"Error: numbers.txt could not be opened.\n"); fclose(outID); return;
end
arr=fscanf(inID,"%f"); fclose(inID);
target=7;
[firstIndex,count]=findValue(arr,target);
fprintf(outID,"Target: %g\nFirst index: %d\nOccurrence count: %d\n",target,firstIndex,count);
fclose(outID);
disp("Search report saved to output.txt");
