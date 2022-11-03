function [] = Histogram(image)
histogram_img = zeros(256,1);
histogram_img_1 = zeros(256,1,1);
histogram_img_2 = zeros(256,1,2);
histogram_img_3 = zeros(256,1,3);

[row , col , depth] = size(image);
% if the imaga is RGB
if depth == 3
    for r = 1:row
         for c =1:col
                 histogram_img_1(image(r,c,1) + 1) =  histogram_img_1(image(r,c,1) + 1) + 1;
                 histogram_img_2(image(r,c,2) + 1) =  histogram_img_2(image(r,c,2) + 1) + 1;
                 histogram_img_3(image(r,c,3) + 1) =  histogram_img_3(image(r,c,3) + 1) + 1;

         end
    end
    bar(histogram_img_1);
    bar(histogram_img_2);
    bar(histogram_img_3);
else
for r = 1:row
    for c =1:col
        histogram_img(image(r,c) + 1) =  histogram_img(image(r,c) + 1) + 1;
    end
end
bar(histogram_img);
end
end

