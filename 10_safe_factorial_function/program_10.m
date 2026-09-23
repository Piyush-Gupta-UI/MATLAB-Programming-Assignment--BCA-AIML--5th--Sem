clc; clear;
tests=[5 0 -3];
fileID=fopen("output.txt","w");
for i=1:length(tests)
    n=tests(i); result=safeFactorial(n);
    if result==-1
        fprintf(fileID,"n=%g -> Invalid input\n",n);
    else
        fprintf(fileID,"n=%g -> Factorial=%g\n",n,result);
    end
end
fclose(fileID);
disp("Factorial report saved to output.txt");
