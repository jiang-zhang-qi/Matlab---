clc, clear
%% 使用diff()求解符号函数的微分
%function1
% syms x
% y = exp(x^2)/(x^3-x+3);
% dy = diff(y);
% disp(dy)
%function2
syms x y
f = (x^2 + x*y - 1) / (y^3+x+3);
df = diff(f, x);
disp(df)