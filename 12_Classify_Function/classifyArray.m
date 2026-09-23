function [positive,negative,zero,even,odd] = classifyArray(arr)
positive=0; negative=0; zero=0; even=0; odd=0;
for i=1:length(arr)
    x=arr(i);
    if x>0, positive=positive+1;
    elseif x<0, negative=negative+1;
    else, zero=zero+1; end
    if x==fix(x)
        if mod(x,2)==0, even=even+1; else, odd=odd+1; end
    end
end
end
