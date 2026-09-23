clc; clear;
A=[1 2 3;4 5 6]; B=[7 8;9 10;11 12];

fileID=fopen("output.txt","w");
if size(A,2) ~= size(B,1)
    fprintf(fileID,"Multiplication invalid: columns of A must equal rows of B.\n");
else
    C=zeros(size(A,1),size(B,2));
    for i=1:size(A,1)
        for j=1:size(B,2)
            for k=1:size(A,2)
                C(i,j)=C(i,j)+A(i,k)*B(k,j);
            end
        end
    end
    builtin=A*B;
    fprintf(fileID,"Manual product:\n");
    for i=1:size(C,1), fprintf(fileID,"%g ",C(i,:)); fprintf(fileID,"\n"); end
    if isequal(C,builtin), fprintf(fileID,"Manual result matches MATLAB/Octave A*B: Yes\n");
    else, fprintf(fileID,"Manual result matches MATLAB/Octave A*B: No\n"); end
end
fclose(fileID);
disp("Result saved to output.txt");
