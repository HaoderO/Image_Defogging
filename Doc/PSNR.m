clc;
clear; 
% ����ͼƬ�ķ�ֵ����ȣ�PSNR�� 
% �ýű��ļ����ڼ���ͼƬ�ķ�ֵ����ȣ�PSNR�� 
% ����ͼƬ 
Original_image = imread('2.jpg');
Processed_image = imread('3.jpg');
% ��������ͼƬ��MSE 
mse_image = (double(Original_image) - double(Processed_image)).^2; 
mse_value = mean(mse_image(:));
% �����ֵ����ȣ�PSNR�� 
max_pixel = max(double(Original_image(:)));
result = 10*log10(max_pixel^2/mse_value);
% ��ӡ��ֵ����ȣ�PSNR�� 
fprintf('PSNR of two images: %.2f dB\n', result);