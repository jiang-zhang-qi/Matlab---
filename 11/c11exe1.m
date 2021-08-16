%Solve()
clc, clear
syms x
%% cos(x)^2 - sin(x)^2
y = cos(x)^2 - sin(x)^2;
solve(y, x);

%% cos(x)^2 + sin(x)^2
%无解
syms x
y = cos(x)^2 + sin(x)^2;
solve(y, x)