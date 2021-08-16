%boxplot
clc, clear
load stockreturns;
boxplot(stocks);
%偏度skewness
skw = skewness(stocks);
disp(['Skewness are ' num2str(skw)]);
%峰度kurtosis
kur = kurtosis(stocks);
disp(['Kurtosis are ' num2str(kur)]);