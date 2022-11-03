function [Image] = Negative(oldImage)
[row , col , depth]=size(image);
Image = zeros(row ,col);
Image = double(Image);
if depth == 1
for r= 1:row
    for c=1:col
        Image(r,c) = (255 - oldImage(r,c));
    end
end
Image = uint8(Image);
else
    for r= 1:row
        for c=1:col
            Image(r,c) = ( (255 - oldImage(r,c,1) ) +( 255 - oldImage(r,c,2) )+ ( 255 - oldImage(r,c,3) ));
        end
    end
end
Image = uint8(Image);

end

