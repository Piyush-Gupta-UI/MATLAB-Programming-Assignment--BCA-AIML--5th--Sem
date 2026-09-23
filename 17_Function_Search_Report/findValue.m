function [firstIndex, count] = findValue(arr,target)
firstIndex=-1; count=0;
for i=1:length(arr)
    if arr(i)==target
        count=count+1;
        if firstIndex==-1, firstIndex=i; end
    end
end
end
