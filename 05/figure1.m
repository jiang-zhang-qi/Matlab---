close all
clear
clc
x = 1:0.01:2;
f = x.^2;
g = sin(x.*2*pi);

figure
plot(x, f, 'k',...
    'LineWidth', 3);
hold on
plot(x, g, 'or',...
    'MarkerFaceColor', [1, 0.4, 0.6]);
%get(gca)
set(gca, 'FontSize', 15)
set(gca, 'YTick', -1:4)
set(gca, 'XTick', 1:0.2:2)

legend({'t^{2}', 'sin(2\pit)'}, 'Location', 'northwest');
title('Mini assignment #1')
xlabel('Times (ms)')
ylabel('f(t)')

% saveas(gcf, 'test.pdf', 'pdf')