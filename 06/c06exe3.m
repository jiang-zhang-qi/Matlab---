%Exercise: plot a hexagon on a polar chart
clc, clear, close all
figure
subplot(1, 4, 1)
x = 1:100; theta = x/10; r = log10(x);
polar(theta, r);
subplot(1, 4, 2)
theta = linspace(0, 2*pi); r = cos(4*theta);
polar(theta, r)
subplot(1, 4, 3)
theta = linspace(0, 2*pi, 6); r = ones(1, length(theta));
polar(theta, r)
subplot(1, 4, 4)
theta = linspace(0, 2*pi); r = 1 - sin(theta);
polar(theta, r)

figure
theta = linspace(0, 2*pi, 7); r = ones(1, length(theta));
polar(theta, r)