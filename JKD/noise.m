function img=noise(img,mask)

img=uint8(img);

img_noise=imnoise(img,'gaussian');
img_noise=imnoise(img_noise,'salt');

for x=1:size(img,1)
    for y=1:size(img,2)
        if mask(x,y)==0
            img(x,y)=img_noise(x,y);
        end
    end
end


figure;imshow(img,[]);title('´Ö²Ú¶È·ÂÕæÍ¼')
end