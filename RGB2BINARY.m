function [Binary_Image] = RGB2BINARY(RGB_Image , Threshold)
[row , col , depth]=size(RGB_Image);
Binary_Image = zeros(row , col);
Gray_Image = zeros(row , col);
Gray_Image = double(Gray_Image);
for r = 1:row
    for c = 1:col
        Gray_Image(r,c) = (RGB_Image(r,c,1) + RGB_Image(r,c,2) + RGB_Image(r,c,3))/3;    
    end
end
Gray_Image = uint8(Gray_Image);
for r = 1:row
    for c = 1:col
        if Gray_Image(r,c)> Threshold
            Binary_Image(r,c) = 1;
        end
        if Gray_Image(r,c)< Threshold
            Binary_Image(r,c) = 0;
        end
    end
end
Binary_Image = logical(Binary_Image);
end





