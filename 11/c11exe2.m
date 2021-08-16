clc, clear
%% (x-a)^2 + (y-b)^2 = r^2, find x = ?
syms x y a b r
%x always first
s = solve((x-a)^2+(y-b)^2-r^2, x);

%% A = [a b; c d], find A^(-1) = ?
%Solution1
syms a b c d x11 x12 x21 x22
eq1 = a*x11 + c*x12 - 1;
eq2 = b*x11 + d*x12;
eq3 = a*x21 + c*x22;
eq4 = b*x21 + d*x22 - 1;
s1 = solve(eq1, eq2, eq3, eq4, x11, x12, x21, x22);
%Solution1.5
syms a b c d x11 x12 x21 x22
s2 = solve([a b; c d]*[x11 x12; x21 x22] - eye(2, 2), x11, x12, x21, x22);
%Solution2
syms a b c d
s3 = inv([a b; c d]);