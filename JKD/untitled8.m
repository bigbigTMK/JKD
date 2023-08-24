clc
clear all
close all
img=imread('1.jpg');
img=imresize(img,[512,512]);

img=imgray(img,'average');
mask=im2bw(uint8(img));

figure;imshow(mask)


data=[];i=1;
for x=1:size(img,1)
    for y=1:size(img,2)
        if mask(x,y)==0
            data(i)=img(x,y);
            i=i+1;
        end
    end
end
figure;plot(data)
hold on
plot(mean(data))

Ra=[];
for i=1:size(data,2)

    Ra(i)=abs(data(i)-mean(data));
end
Ra=sum(Ra)./size(data,2);