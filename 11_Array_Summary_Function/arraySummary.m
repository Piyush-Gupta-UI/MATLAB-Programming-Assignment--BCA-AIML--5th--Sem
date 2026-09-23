function [total, average, minimum, maximum] = arraySummary(arr)
total=sum(arr);
average=total/length(arr);
minimum=arr(1); maximum=arr(1);
for i=2:length(arr)
    if arr(i)<minimum, minimum=arr(i); end
    if arr(i)>maximum, maximum=arr(i); end
end
end
