clc, clear
load stockreturns;
x4 = stocks(:,4);
Mean = mean(x4);
Median = median(x4);
Mode = mode(x4);
%百分位数
Quartile = prctile(x4, [25, 75]);

Range = max(x4) - min(x4);
Inter_Range = Quartile(2) - Quartile(1);

Std = std(x4);
Var = var(x4);
disp(['Mean is ' num2str(Mean)]);
disp(['Median is ' num2str(Median)]);
disp(['Mode is ' num2str(Mode)]);
disp(['q1 is ' num2str(Quartile(1)) '; q2 is ' num2str(Quartile(2))]);
disp(['Range is ' num2str(Range)]);
disp(['Interquartile Range is ' num2str(Inter_Range)]);
disp(['Std is ' num2str(Std)]);
disp(['Var is ' num2str(Var)]);