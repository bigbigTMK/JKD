function Ra = roughness(img,mask)

data=[];i=1;
for x=1:size(img,1)
    for y=1:size(img,2)
        if mask(x,y)==0
            data(i)=img(x,y);
            i=i+1;
        end
    end
end
figure;plot(data);title('零件表面灰度变化图')

Ra=[];
for i=1:size(data,2)

    Ra(i)=abs(data(i)-mean(data));
end
Ra=sum(Ra)./size(data,2);
fprintf('粗糙度为：%f',Ra)
end