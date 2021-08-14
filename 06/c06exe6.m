%调整柱状图中每个bar的颜色
clc, clear, close all
G = [46, 38, 29, 24, 13];
S = [29, 27, 17, 26, 8];
B = [29, 23, 19, 32, 7];
%每一行是一个group每一列是一个bar
h = bar(1:5, [G' S' B']);
title('Medal count for top 5 countries in 2012 Olympics');
ylabel('Number of medals'); xlabel('Counrty');
legend('Gold', 'Silver', 'Bronze');
% get(h(1))

%这些数字是怎么来的？
    %首先我们可以找到所需要的颜色的0～255的颜色代码，然后我们可以对每个数除以255
    %就可以得到0～1之间的数了，就可以用于Matlab
    
new_colormap = [1 0.84314 0;
                0.75294 0.75294 0.75294;
                0.72157 0.52549 0.04314;
                ];
%相当于每一个bar都是一个line
for i = 1:3
    set(h(i), 'EdgeColor', [1, 1, 1]);
    set(h(i), 'FaceColor', new_colormap(i, :))
end