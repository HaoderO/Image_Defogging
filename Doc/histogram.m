clc;
clear; 
%��ȡͼƬ 
I = imread('5.jpg'); 
%����Ҷ�ͼ��Ϣ 
gray_scale = rgb2gray(I); 
%����ֱ��ͼ 
[counts,binLocations] = imhist(gray_scale); 
%��ʾֱ��ͼ 
bar(binLocations,counts);