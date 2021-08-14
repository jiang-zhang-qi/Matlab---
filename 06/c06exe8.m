%Combine the contour techniques to generate a figure as shown below
clc, clear, close all
x = -3.5:0.2:3.5;
y = -3.5:0.2:3.5;
[X, Y] = meshgrid(x, y);
Z = X.*exp(-X.^2-Y.^2);
%                   z = ...的平面
[C, h] = contourf(Z, -.45:.05:.45);
clabel(C, h);
colormap jet