function img_gray=imgray(img,a)

if size(img,3) == 3

%% ���ֵ
if strcmp(a,'max')
for x=1:size(img,1)
    for y=1:size(img,2)
        img_gray(x,y)=max(img(x,y,:));
    end
end
figure;imshow(img_gray,[]);title('���ֵ��')
end

%% ƽ��ֵ
if strcmp(a,'average')
for x=1:size(img,1)
    for y=1:size(img,2)
        img_gray(x,y)=sum(double(img(x,y,:)))./3;
    end
end
figure;imshow(img_gray,[]);title('ƽ��ֵ��')
end

%% ��Ȩƽ��
if strcmp(a,'weighted mean')
for x=1:size(img,1)
    for y=1:size(img,2)
        img_gray(x,y)=0.30.*double(img(x,y,1)) + 0.59.*double(img(x,y,2)) + 0.11.*double(img(x,y,3));
    end
end

figure;imshow(img_gray,[]);title('��Ȩƽ��')
end

%%
else
    img_gray=img;
end
end