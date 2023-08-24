clc
clear all
close all
%% 读取图像
img=imread('1.jpg');
img=imresize(img,[128,128]);%重构图像尺寸
figure;imshow(img);title('原始图像')

%% 灰度化 
%img=imgray(img,'weighted mean'); %加权平均
%img=imgray(img,'max'); %最大值
img=imgray(img,'average'); %平均值

%% 二值化
mask=imbw(img,'max'); %最大值
%mask=imbw(img,'mean'); %平均值
%mask=imbw(img,'hist'); %直方图

%% 粗糙度仿真
img=noise(img,mask); %加噪声仿真粗糙

%% 滤波
%img = myfilter(img,'wiener'); %维纳
img = myfilter(img,'average'); %平均值
%img = myfilter(img,'median'); %中值

%% 计算粗糙度
Ra = roughness(img,mask);
