%画3个平面3D
%Q1:画出来可能是一个平面？ans：你可以使用旋转工具拖动图片看一下，或者直接用view()设置观察角就行
%Q2:画出来可能是一片黑？ans:1你可以拖动一下看一下；2步长设置太小，可以增加步长；
clc, clear, close all
[X, Y] = meshgrid(-10:.5:10, -10:.5:10);
Z1 = -X - Y;
Z2 = -X + Y;
Z3 = -X./3;
figure
hold on
surf(Z1);
surf(Z2);
surf(Z3);
colormap(hsv);
% rotate3d on
view(62, 25)
hold off