%2.What are the differences between C and D?
%C花括号可以返回cell中的内容；
%D圆括号只能返回pointer，无法返回指向的内容；
A(1, 1) = {[1 4 3; 0 5 8; 7 2 9]};
A(1, 2) = {'Anne Smith'};
A(2, 1) = {3+7i};
A(2, 2) = {-pi:pi:pi};
C = A{1, 1}
D = A(1, 1)
%How do I get this number?
A{1, 1}(1, 1)