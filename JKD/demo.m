clc
clear all
close all
%% ��ȡͼ��
img=imread('1.jpg');
img=imresize(img,[128,128]);%�ع�ͼ��ߴ�
figure;imshow(img);title('ԭʼͼ��')

%% �ҶȻ� 
%img=imgray(img,'weighted mean'); %��Ȩƽ��
%img=imgray(img,'max'); %���ֵ
img=imgray(img,'average'); %ƽ��ֵ

%% ��ֵ��
mask=imbw(img,'max'); %���ֵ
%mask=imbw(img,'mean'); %ƽ��ֵ
%mask=imbw(img,'hist'); %ֱ��ͼ

%% �ֲڶȷ���
img=noise(img,mask); %����������ֲ�

%% �˲�
%img = myfilter(img,'wiener'); %ά��
img = myfilter(img,'average'); %ƽ��ֵ
%img = myfilter(img,'median'); %��ֵ

%% ����ֲڶ�
Ra = roughness(img,mask);
