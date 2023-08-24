function img = myfilter(img,a)

if strcmp(a,'wiener')
    img = deconvwnr(img,fspecial('motion',2,45),1);
    figure;imshow(img,[]);title('维纳滤波')
end

if strcmp(a,'average')
    img = filter2(fspecial('average',3),img);
    figure;imshow(img,[]);title('均值滤波')
end

if strcmp(a,'median')
    img = medfilt2(img,[3,3]);
    figure;imshow(img,[]);title('中值滤波')
end


end