%高次多项式拟合
clc, clear, close all
x = [-1.2 -0.5 0.3 0.9 1.8 2.6 3.0 3.5];
y = [-15.6 -8.5 2.2 4.5 6.6 8.2 8.9 10.0];
figure
%窗口出现位置(250, 300)       画布宽高1200x400
set(gcf, 'position', [250 300 1200 400]);
for i = 4:6
    p = polyfit(x, y, i);
    xfit = x(1):.1:x(end);
    yfit = polyval(p, xfit);
    subplot(1, 3, i-3); plot(x, y, 'ro', xfit, yfit, 'b');
    legend({'Data points', 'Fitted curve'}, 'Location', 'southeast',...
        'FontSize', 14);
    set(gca, 'FontSize', 14);
    grid on
    axis square
end
%拟合的次数并不是越高越好，首先拟合得越高计算越复杂，其次（最重要）可能导致过拟合的问题即对训练集
%拟合效果很好，但是对测试集的预测效果比较差