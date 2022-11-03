function [newImage] = Contrast_Stretching(image,newMax , newMin)
[row , col , depth] = size(image);
newImage = zeros(row , col);
newImage = double(newImage);
oldMin = min(min(image));
oldMax = max(max(image));
if depth == 1
    for r = 1:row
        for c = 1:col
            newImage(r,c) = (((image(r,c) - oldMin)/(oldMax - oldMin)) * (newMax - newMin))+newMin;
        end
    end
end
newImage = uint8(newImage);
end

