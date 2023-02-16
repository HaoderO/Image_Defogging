
clear all;

close all;

clc;

w0=0.85;%0.65  �˻�������������һЩ��1ʱ��ȫȥ��

t0=0.1;

I=imread('2.jpg');

Ir = I(:,:,1);

[h,w,s]=size(I);

min_I=zeros(h,w);

dark_I = zeros(h,w);

%����ȡ�ð�Ӱͨ��ͼ��

for i=1:h

for j=1:w

dark_I(i,j)=min(I(i,j,:));

end

end

dark_I = uint8(dark_I);

img_dark = ordfilt2(dark_I,1,ones(3,3));

Max_dark_channel=double(max(max(img_dark)))%�������

dark_channel=double(img_dark);

t1=1-w0*(dark_channel/Max_dark_channel);%ȡ��͸л�ֲ���ͼ

t2=max(t1,t0);

T=uint8(t1*255);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

I1=double(I);

J(:,:,1) = uint8((I1(:,:,1) - (1-t2)*Max_dark_channel)./t2);

J(:,:,2) = uint8((I1(:,:,2) - (1-t2)*Max_dark_channel)./t2);

J(:,:,3) =uint8((I1(:,:,3) - (1-t2)*Max_dark_channel)./t2);

figure,

set(gcf,'outerposition',get(0,'screensize'));

subplot(221),imshow(I),title('ԭʼͼ��');

subplot(222),imshow(J),title('ȥ����ͼ��');

subplot(223),imshow(img_dark),title('dark channnel��ͼ��');

subplot(224),imshow(T),title('͸����t��ͼ��');

imwrite(J,'wu1.jpg');

