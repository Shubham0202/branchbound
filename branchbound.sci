function generateBinaryStrings(N)
    queue = [];
    queue = [queue; ""];
    
    while size(queue, 1) > 0
        currentString = queue(1, :);
        queue = queue(2:$, :);
        
        if length(currentString) == N then
            disp(currentString);
        else
            queue = [queue; currentString + "0"];
            queue = [queue; currentString + "1"];
        end
    end
end

N = 3;
generateBinaryStrings(N);
