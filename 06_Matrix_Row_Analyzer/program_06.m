clc; clear;
A=[4 7 2; 9 1 5; 3 8 6];
rows=size(A,1); rowSums=zeros(1,rows); rowAvg=zeros(1,rows); rowMax=zeros(1,rows);
for i=1:rows
    s=0; mx=A(i,1);
    for j=1:size(A,2)
        s=s+A(i,j);
        if A(i,j)>mx, mx=A(i,j); end
    end
    rowSums(i)=s; rowAvg(i)=s/size(A,2); rowMax(i)=mx;
end
best=1;
for i=2:rows
    if rowSums(i)>rowSums(best), best=i; end
end
fileID=fopen("output.txt","w");
for i=1:rows
    fprintf(fileID,"Row %d: Sum=%g Average=%.2f Maximum=%g\n",i,rowSums(i),rowAvg(i),rowMax(i));
end
fprintf(fileID,"Row with highest sum: %d\n",best);
fclose(fileID);
disp("Matrix report saved to output.txt");
