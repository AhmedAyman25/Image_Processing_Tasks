function [BrightImage] = Brightness(image , val)
[row , col, depth] = size(image);
BrightImage = zeros(row,col);
BrightImage = im2double(BrightImage);

for r = 1:row
    for c = 1:col
        BrightImage(r,c) = val * log(image(r,c) + 1);
    end
end
BrightImage = im2uint8(BrightImage);
end

