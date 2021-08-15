%Given f(x)=exp(-x)*sin(x^2/2), plot the approximate derivatives f' of h= 0.1, 0.01, and 0.001
clc, clear, close all

g = colormap(lines); hold on;
h = [0.1, 0.01, 0.001];
for i = 1:3
    x = 0:power(10, -i):2*pi;
    y = exp(-x).*sin(x.^2./2);
    m = diff(y)./diff(x);
    plot(x(1:end-1), m, 'Color', g(i, :));
end
hold off
set(gca, 'XLim', [0, 2*pi]);
%set(gca, 'Ylim', [-0.25, 0.25]);
set(gca, 'FontSize', 18); set(gca, 'FontName', 'symbol');
set(gca, 'XTick', 0:pi/2:2*pi);
set(gca, 'XTickLabel', {'0', '\pi/2', '\pi', '3\pi/2', '2\pi'});
h = legend('h=0.1', 'h=0.01', 'h=0.001');
set(h, 'FontName', 'Times New Roman'); box on;
