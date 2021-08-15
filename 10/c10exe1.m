%Exe1:带有多项式乘法的导数
clc, clear, close all
p1 = [5 -7 5 10];
p2 = [4 12 -3];
p = conv(p1, p2);
x = -2:.1:1;
f = polyval(p, x);
f_der = polyval(polyder(p), x);
plot(x, f, 'b--','LineWidth', 3)
hold on
plot(x, f_der, 'r', 'LineWidth', 3)
legend({'f(x)', 'f''(x)'})