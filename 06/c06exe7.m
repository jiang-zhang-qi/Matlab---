%Create a custom green color map such that the output of the script below looks like:
clc, clear, close all
x = [1:10; 3:12; 5:14];
imagesc(x);
colorbar;

map = zeros(256, 3);
map(:, 2) = (0:255)/255;
colormap(map)