% WAIT
clc, clear, close all
theta = linspace(0, 2*pi, 5);
x = cos(theta); y = sin(theta);
h = fill(x, y, 'y'); axis square off
set(h, 'LineWidth', 6)
text(0, 0, 'WAIT', 'Color', 'k', 'FontSize', 80,...
    'FontWeight', 'bold', 'HorizontalAlignment', 'center');