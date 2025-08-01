
function avg = averagebestthree(a, b, c, d)
    lowest = a;  
    if b < lowest  
        lowest = b;  
    end  
    if c < lowest  
        lowest = c;  
    end  
    if d < lowest  
        lowest = d;  
    end  

    total = a + b + c + d;  
    bestthreesum = total - lowest;  
    avg = bestthreesum / 3;  
end