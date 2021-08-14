%Plot a function:f(t) = sin((pi*t.^2)/4)
%Add the points sampled at 5 Hz using stem()

clc, clear, close all
t = linspace(0, 10, 1000);
y = sin((pi*t.^2)/4);
plot(t, y)
hold on
x = linspace(0, 10, 50);
y2 = sin((pi*x.^2)/4);
stem(x, y2)
set(gca, 'YTick', -1:.5:1)