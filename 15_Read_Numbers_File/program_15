clc; clear;
fileID=fopen("input.txt","r");
outID=fopen("output.txt","w");
if fileID==-1
    fprintf(outID,"Error: input.txt could not be opened.\n");
    fclose(outID); return;
end
data=fscanf(fileID,"%f"); fclose(fileID);
total=0; mn=data(1); mx=data(1);
for i=1:length(data)
    total=total+data(i);
    if data(i)<mn, mn=data(i); end
    if data(i)>mx, mx=data(i); end
end
fprintf(outID,"Count: %d\nSum: %g\nAverage: %.2f\nMinimum: %g\nMaximum: %g\n",length(data),total,total/length(data),mn,mx);
fprintf(outID,"Positive: "); for i=1:length(data), if data(i)>0, fprintf(outID,"%g ",data(i)); end, end
fprintf(outID,"\nNegative: "); for i=1:length(data), if data(i)<0, fprintf(outID,"%g ",data(i)); end, end
fprintf(outID,"\nZero count: "); z=0; for i=1:length(data), if data(i)==0,z=z+1;end,end; fprintf(outID,"%d\n",z);
fclose(outID);
disp("File analysis saved to output.txt");
