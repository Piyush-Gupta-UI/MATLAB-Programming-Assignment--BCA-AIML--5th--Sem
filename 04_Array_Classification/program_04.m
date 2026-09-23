clc; clear;
arr = [10 -4 0 7 -9 2 0 15 -3 8];

positive=0; negative=0; zero=0; even=0; odd=0;
sumPositive=0; sumNegative=0;
for i=1:length(arr)
    x=arr(i);
    if x>0
        positive=positive+1; sumPositive=sumPositive+x;
    elseif x<0
        negative=negative+1; sumNegative=sumNegative+x;
    else
        zero=zero+1;
    end
    if x==fix(x)
        if mod(x,2)==0, even=even+1; else, odd=odd+1; end
    end
end

counts=[positive negative zero];
names={"Positive","Negative","Zero"};
highest=1;
for i=2:3
    if counts(i)>counts(highest), highest=i; end
end

fileID=fopen("output.txt","w");
fprintf(fileID,"Positive: %d\nNegative: %d\nZero: %d\nEven integers: %d\nOdd integers: %d\n",positive,negative,zero,even,odd);
fprintf(fileID,"Sum positive: %g\nSum negative: %g\nHighest category count: %s\n",sumPositive,sumNegative,names{highest});
fclose(fileID);
disp("Report saved to output.txt");
