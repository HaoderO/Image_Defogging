clc; %���������д���
clear all; %��������

%��ȡͼƬ 
I=imread('2.jpg');
%��ͼƬת��Ϊ16λ�޷������� 
I_16=uint16(I); 
%����3λ������8 
R=bitshift(I_16(:,:,1), -3); 
%����2λ������4 
G=bitshift(I_16(:,:,2), -2); 
%����3λ������8
B=bitshift(I_16(:,:,3), -3);
%��R��G��Bλ�Ƶ���ȷ��λ�ò����л�����
RGB565=bitor(bitor(bitshift(R,11),bitshift(G,5)), B); 
%��ȡͼƬ�ĳ���
[m,n] = size(RGB565); 
fid=fopen('RGB565_mode.txt','wt'); 
for i=1:m 
    for j=1:n 
        fprintf(fid,'%X ',RGB565(i,j)); 
    end
  %  fprintf(fid,'\n');
end
fclose(fid);