clc; clear;
A=[-8 -3 -10; -4 -2 -7; -9 -5 -6];
mx=A(1,1); r=1; c=1;
for i=1:size(A,1)
    for j=1:size(A,2)
        if A(i,j)>mx
            mx=A(i,j); r=i; c=j;
        end
    end
end
fileID=fopen("output.txt","w");
fprintf(fileID,"Maximum value: %g\nRow: %d\nColumn: %d\n",mx,r,c);
fclose(fileID);
disp("Result saved to output.txt");
