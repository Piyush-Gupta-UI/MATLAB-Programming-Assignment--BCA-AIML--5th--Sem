clc; clear;
A=[5 8 2 9]; B=[-4 -1 -7 -3];
fileID=fopen("output.txt","w");
[tot,avg,mn,mx]=arraySummary(A);
fprintf(fileID,"Array 1: total=%g average=%.2f minimum=%g maximum=%g\n",tot,avg,mn,mx);
[tot,avg,mn,mx]=arraySummary(B);
fprintf(fileID,"Array 2: total=%g average=%.2f minimum=%g maximum=%g\n",tot,avg,mn,mx);
fclose(fileID);
disp("Summary saved to output.txt");
