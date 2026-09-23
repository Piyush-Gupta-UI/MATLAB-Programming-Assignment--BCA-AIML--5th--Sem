clc; clear;
n = 12321;
original = n;
digits = 0; sumDigits = 0; evenDigits = 0; oddDigits = 0; reversed = 0;

while n > 0
    d = mod(n,10);
    digits = digits + 1;
    sumDigits = sumDigits + d;
    if mod(d,2)==0, evenDigits=evenDigits+1; else, oddDigits=oddDigits+1; end
    reversed = reversed*10 + d;
    n = floor(n/10);
end

fileID=fopen("output.txt","w");
fprintf(fileID,"Number: %d\nDigits: %d\nSum of digits: %d\nEven digits: %d\nOdd digits: %d\nReversed: %d\n",original,digits,sumDigits,evenDigits,oddDigits,reversed);
if original==reversed, fprintf(fileID,"Palindrome: Yes\n"); else, fprintf(fileID,"Palindrome: No\n"); end
fclose(fileID);
disp("Report saved to output.txt");
