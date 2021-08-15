%Given f(x) = sin(x), write a script to find the error of f'(x0) at x0 = pi/2 using various h
clc, clear
h = logspace(-7, -1, 7);
arr = zeros(2, length(h));
for i=1:7
   x = [pi/2, pi/2+h(i)];
   y = [sin(pi/2), sin(pi/2+h(i))];
   slope = diff(y)./diff(x);
   arr(1, i) = h(i);
   arr(2, i) = abs(0-slope);
end
disp(['h:        ', num2str(arr(1, :))])
disp(['error:    ', num2str(arr(2, :))])