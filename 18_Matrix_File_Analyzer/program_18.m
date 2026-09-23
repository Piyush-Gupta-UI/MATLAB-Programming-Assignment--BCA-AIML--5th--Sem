clc; clear;
inID=fopen("matrix.txt","r"); outID=fopen("output.txt","w");
if inID==-1
    fprintf(outID,"Error: matrix.txt could not be opened.\n"); fclose(outID); return;
end
A=fscanf(inID,"%f",[3,3])'; fclose(inID);
mx=A(1,1); mn=A(1,1); mxr=1; mxc=1; mnr=1; mnc=1;
rowSums=zeros(1,size(A,1));
for i=1:size(A,1)
    for j=1:size(A,2)
        rowSums(i)=rowSums(i)+A(i,j);
        if A(i,j)>mx, mx=A(i,j); mxr=i; mxc=j; end
        if A(i,j)<mn, mn=A(i,j); mnr=i; mnc=j; end
    end
end
best=1;
for i=2:length(rowSums)
    if rowSums(i)>rowSums(best), best=i; end
end
fprintf(outID,"Maximum: %g at (%d,%d)\nMinimum: %g at (%d,%d)\n",mx,mxr,mxc,mn,mnr,mnc);
for i=1:length(rowSums), fprintf(outID,"Row %d sum: %g\n",i,rowSums(i)); end
fprintf(outID,"Highest row sum: Row %d\n",best);
fclose(outID);
disp("Matrix analysis saved to output.txt");
