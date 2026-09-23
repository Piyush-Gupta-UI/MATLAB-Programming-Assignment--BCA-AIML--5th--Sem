clc; clear;
A=[1 -2 0 4 7]; B=[-3 -6 0 5 8 10];
fileID=fopen("output.txt","w");
[p,n,z,e,o]=classifyArray(A);
fprintf(fileID,"Array 1 -> Positive=%d Negative=%d Zero=%d Even=%d Odd=%d\n",p,n,z,e,o);
[p,n,z,e,o]=classifyArray(B);
fprintf(fileID,"Array 2 -> Positive=%d Negative=%d Zero=%d Even=%d Odd=%d\n",p,n,z,e,o);
fclose(fileID);
disp("Comparison saved to output.txt");
