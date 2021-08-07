%4.How does one save a specific variable?
%>>save 文件名.mat 变量名 变量名 （-ascii）
%PS：这里是用空格隔开变量名的

%5.Excel
%%
%5.1Calculate the standard deviations and write them into column F
workbook = '04Score.csv';
score = xlsread('04Score.xlsx');
m = mean(score, 2);
s = std(score, 0, 2);
% MAC用户似乎用不了xlswrite
% xlswrite(workbook, m, 1, 'E2:E4');
% xlswrite(workbook, {'Mean'}, 1, 'E1');
% xlswrite(workbook, s, 1, 'F2:F4');
% xlswrite(workbook, {'Std'}, 1, 'F1');

%%
%5.2How do we write both the text and number into an Excel file?
[score header] = xlsread('04Score.xlsx');
header(1, 5:6) = {'Mean', 'Std'};
data = [score, m, s];
cell_data = num2cell(data);
header(2:4, 2:6) = cell_data;
cellwrite(header, 'result.csv');
%xlswrite('result.xlsx', header);

