%Exercise: separate all the pieces in the pie chart
clc, clear, close all

a = [10 5 20 30];
% 饼图pie(a, [0, 0, 0, 1])中[0, 0, 0, 1]：0代表连接在一起； 1代表分开
subplot(2, 2, 1)
pie(a)
subplot(2, 2, 2)
pie(a, [0, 0, 0, 1])
subplot(2, 2, 3)
pie3(a, [0, 0, 0, 1])
subplot(2, 2, 4)
pie(a, [1, 1, 1, 1])