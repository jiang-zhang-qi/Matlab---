%符号函数积分
%% 第一种定积分方法：符号函数+int()
syms x
y = (x^2 - x + 1)/(x + 3);
z = int(y);
s = subs(z, x, 10) - subs(z, x, 0);
disp(s)

%% 第二种积分方法：句柄函数+integral()
y = @(x) (x.^2 - x + 1)./(x + 3);
integral(y, 0, 10)