%Exercise: stack the horizontal bar chart
clc, clear, close all

x = [1 2 5 4 8];
y = [x; 1:5];
%柱状图 bar/bar3/barh
subplot(2, 2, 1)
bar(y)
title('Vertical')
subplot(2, 2, 2)
bar(y, 'stacked')
title('Vertical Stacked')
subplot(2, 2, 3)
barh(y)
title('Horizontal')
subplot(2, 2, 4)
barh(y, 'stacked')
title('Horizontal Stacked')