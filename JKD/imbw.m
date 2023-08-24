function img = imbw(img,a)
img=uint8(img);
%% 
if size(img,3) == 3
    img=rgb2gray(img);
end

if strcmp(a,'mean')
a=mean(mean(img));
for x=1:size(img,1)
    for y=1:size(img,2)
        if img(x,y)>=a
            img(x,y)=255;
        else
            img(x,y)=0;
        end
    end
end

figure;imshow(img,[]);title('灰度平均值')
end

%% 
if strcmp(a,'max')
for x=1:size(img,1)
    for y=1:size(img,2)
        if img(x,y)>=127
            img(x,y)=255;
        else
            img(x,y)=0;
        end
    end
end

figure;imshow(img,[]);title('阈值法')
end

%% 
if strcmp(a,'hist')
    figure;imhist(img)
    img=im2bw(img);
    figure;imshow(img,[]);title('直方图法')
end
end