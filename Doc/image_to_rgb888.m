clc; %���������д���
clear all; %��������

% Ϊ�˽�ͼƬת��ΪRGB888ģʽ���ı��ļ�
% ��ȡͼ�� 
img = imread('180_180.jpeg');
% ��ȡ�ߴ� 
[m,n,~] = size(img);
% �����ļ� 
fileID = fopen('RGB888_mode.txt','w');
% ѭ��д��RGB888���� 
for i=1:m 
    for j=1:n 
        r = img(i,j,1); 
        g = img(i,j,2); 
        b = img(i,j,3); 
%         fprintf(fileID,'0x%.2X',b); 
%         fprintf(fileID,'%.2X',g); 
        fprintf(fileID,'%.2X%.2X%.2X ',r,g,b); 
    end
end
% �ر��ļ� 
fclose(fileID);