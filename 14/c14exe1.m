%polyfit
clc, clear, close all
x = 20:10:60;
y = [0.025, 0.035, 0.05, 0.06, 0.08];
fit = polyfit(x, y, 1);
%做图
xfit = x(1):1:x(end);
yfit = polyval(fit, xfit);
h = plot(x, y, 'bo', xfit, yfit, 'r');
set(h(2), 'LineWidth', 2);
set(gca, 'FontSize', 12);
set(gca, 'XTick', 20:10:60);
xlabel('Temperature(\circC)');
ylabel('TC  output(mV)');
title('Calibration of TC');
text(50, 0.03, ['\beta_{0} = ' num2str(fit(2))], 'FontSize', 16);
text(50, 0.035, ['\beta_{1} = ' num2str(fit(1))], 'FontSize', 16);
grid on
legend({'data points', 'best-line'}, 'Location', 'northwest');