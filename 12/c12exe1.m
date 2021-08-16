%解基尔霍夫线性方程组
clc, clear
syms v1 v2 v3 v4 v5 r1 r2 r3 r4 r5
A = [r1 0 0 r4 0;
    0 r2 0 -r4 r5;
    0 0 -r3 0 r5;
    1 -1 0 -1 0;
    0 1 -1 0 -1];
b = [v1; 0; v2; 0; 0];
x = A\b
