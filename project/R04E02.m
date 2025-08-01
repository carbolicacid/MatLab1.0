clc;
close all;
clear;

x = 0:6;
y = [0 0.8415 0.9093 0.1411 -0.7568 -0.9589 -0.2794];
xi = [2.5 3.5 4.2 5.7];
n = length(x);

for k = 1:length(x)
    for i = 1:n-1
        if xi(k) >= x(i) && xi(k) <= x(i+1)
            x1 = x(i);
            x2 = x(i+1);
            y1 = y(i);
            y2 = y(i+1);
            break;
        end
    end
    ym(k) = (xi(k)-x2)*y1/(x1-x2) + (xi(k)-x1)*y2/(x2-x1);
end

plot(x, y)
hold on
plot(xi, ym, 'o')
