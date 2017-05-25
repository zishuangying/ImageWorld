%清除画布
clf;
%清除坐标轴
cla;
%关闭窗口
close all;
%清除所有原有变量
clear all;
%清除命令窗口的内容
clc;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%图像1
%Image10=imread('data/2.jpg');
Image10=imread('data/6.jpg');
%RGB->CMY,double->double
Image11=imcomplement(Image10);
%RGB->HSI,double->double
Image12=rgb2hsi(Image10);
%RGB->HSV,double->double
Image13=rgb2hsv(Image10);

%CMY->RGB(uint8->uint8):
Image21=imcomplement(Image11);
%HSI->RGB(double->double):
Image22=hsi2rgb(Image12);
%HSV->RGB(double->double):
Image23=hsv2rgb(Image13);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%绘制图像
figure(1);
%修复图像比例
axis normal;
%标题字号
FontSize=18;
subplot(2,2,1);imshow(Image10);title('RGB','FontSize',FontSize);
subplot(2,2,2);imshow(Image11);title('CMY','FontSize',FontSize);
subplot(2,2,3);imshow(Image12);title('HSI','FontSize',FontSize);
subplot(2,2,4);imshow(Image13);title('HSV','FontSize',FontSize);

