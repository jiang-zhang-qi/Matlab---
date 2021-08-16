%linear lines vs cubic spline
clc, clear, close all
x = 0:.25:2.25;
y = [1.2 1.18 1.1 1 0.92 0.8 0.7 0.55 0.35 0];
x_inter = 0:.05:2.25;
y_linear = interp1(x, y, x_inter);
y_spline = spline(x, y, x_inter);
plot(x, y, 'bo');
hold on
plot(x_inter, y_linear, 'r');
plot(x_inter, y_spline, 'g');
box on
hold off
legend({'Data', 'Linear', 'Spline'});
xlabel('x(ft)');
ylabel('y(ft)');
title('Data & Fit Model', 'FontSize', 16);