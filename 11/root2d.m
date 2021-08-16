function F = root2d(x)

F(1) = 2*x(1) - x(2) - exp(-x(1));
F(2) = -x(1) + 2*x(2) - exp(-x(2));
