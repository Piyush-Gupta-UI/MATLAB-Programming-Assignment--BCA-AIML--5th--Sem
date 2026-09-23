function result = safeFactorial(n)
if n < 0 || n ~= fix(n)
    result = -1;
    return;
end
result = 1;
for i=1:n
    result=result*i;
end
end
