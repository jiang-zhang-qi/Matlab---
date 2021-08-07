function F2C()
while 1
    temp = 'Temperature in F: ';
    f = input(temp);
    if isempty(f)
        break
    else
        c = (f - 32)*5/9;
    end
    disp(['===> Temperature in C = ', num2str(c, '%.2f')]);
end


