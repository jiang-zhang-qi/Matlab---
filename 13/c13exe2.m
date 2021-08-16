%统计图形
clc, clear
x = [1 3 5 5 5 5 7 9 9 9 10 13 14];
a = tabulate(x);
X = a(:, 1)';
freqy = a(:, 2)';
%bar(group_name/bar_name, data matrix)
subplot(1, 3, 1); bar(X, freqy); xlim([0 max(x)]);
subplot(1, 3, 2); area(X, freqy); xlim([0 max(x)]);
subplot(1, 3, 3); stem(X, freqy); xlim([0 max(x)]);
