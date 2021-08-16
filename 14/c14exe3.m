%Multiple Linear Regression
clc, clear, close all
load carsmall;
y = MPG;
x1 = Weight;
x2 = Horsepower;
X = [ones(length(x1), 1) x1 x2 x1.^2 x2.^2 x1.*x2];
%regress出来的系数在b中，与X所给的值的位置相对应，比如说X第二列是x1，那么b(2)就是x1的系数\beta_{1}!!
b = regress(y, X);
x1fit = min(x1):100:max(x1);
x2fit = min(x2):10:max(x2);
[X1FIT, X2FIT] = meshgrid(x1fit, x2fit);
YFIT = b(1) + b(2)*X1FIT + b(3)*X2FIT + b(4)*X1FIT.^2 + b(5)*X2FIT.^2 + b(6)*X1FIT.*X2FIT;
scatter3(x1, x2, y, 'filled'); hold on;
mesh(X1FIT, X2FIT, YFIT); hold off;
xlabel('Weight');
ylabel('Horsepower');
zlabel('MPG');
view(50, 10);
