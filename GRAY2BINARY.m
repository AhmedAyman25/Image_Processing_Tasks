function [Binary_Image] = GRAY2BINARY(GRAY_Image , Threshold)
[row , col] = size(GRAY_Image);
Binary_Image = zeros(row , col);
for r = 1:row
    for c = 1:col
        if GRAY_Image(r,c)> Threshold
            Binary_Image(r,c) = 1;
        end
        if GRAY_Image(r,c)< Threshold
            Binary_Image(r,c) = 0;
        end
    end
end
Binary_Image = logical(Binary_Image);
end

