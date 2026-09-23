clc; clear;
% Input format: Name followed by three subject marks on each line.
inID=fopen("marks.txt","r"); outID=fopen("result.txt","w");
if inID==-1
    fprintf(outID,"Error: marks.txt could not be opened.\n"); fclose(outID); return;
end
fprintf(outID,"Student Result Report\n");
while true
    name=fscanf(inID,"%s",1);
    if isempty(name), break; end
    m1=fscanf(inID,"%f",1); m2=fscanf(inID,"%f",1); m3=fscanf(inID,"%f",1);
    total=m1+m2+m3; avg=total/3;
    if avg>=40, status="Pass"; else, status="Fail"; end
    fprintf(outID,"%s Total=%g Average=%.2f Status=%s\n",name,total,avg,status);
end
fclose(inID); fclose(outID);
disp("Result report saved to result.txt");
