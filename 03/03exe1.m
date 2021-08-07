clear
clc
A = [0 -1 4; 9 -14 25; -34 49 64];
n = 1;
for i = 1:size(A, 2)
    for j = 1:size(A, 1)
        if A(j, i) < 0
            B(n) = find(A == A(j, i));
            A(j, i) = 0;
            n = n + 1;
        end
    end
end
disp(B);
disp(A);
