function out = ChangedMatrix(mat)
    [rows, cols] = size(mat);
    out = zeros(rows, cols);
    
    for i = 1:rows
        for j = 1:cols
            if mat(i, j) >= 0
                out(i, j) = 1;
            else
                out(i, j) = 0;
            end
        end
    end
end