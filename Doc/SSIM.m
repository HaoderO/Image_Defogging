clc; 
clear;
% ��ȡͼ��ת��Ϊ�Ҷ�ͼ 
img1 = imread('2.jpg'); 
img1 = rgb2gray(img1);
img2 = imread('processed.jpg'); 
img2 = rgb2gray(img2);
% ����ͼ��Ľṹ�����ԣ�����ʾ 
similarity = ssim(img1, img2); 
fprintf('ͼ��Ľṹ������Ϊ��%f\n',similarity);