clc;
clear all; 
img=imread('2.jpg');
%��ͼƬת��Ϊ�Ҷ�ͼ 
gray_img = rgb2gray(img);
%����ͼƬ���ݶ� 
[Gx,Gy] = imgradientxy(gray_img);
%�����ݶȵ�ƽ��ֵ 
mean_Gx = mean(Gx(:)); mean_Gy = mean(Gy(:));
%��ʾ��� 
fprintf('The mean gradient of the image is (%f, %f)\n',mean_Gx,mean_Gy);