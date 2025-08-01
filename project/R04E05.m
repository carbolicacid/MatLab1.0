% LAGRANGE INTERPOLATION POLYNOMIAL
clc;
clear;
close all;

dataX = 0:6;
dataY = [0 0.8415 0.9093 0.1411 -0.7568 -0.9589 -0.2794];
n = length(dataX);
x = [2.5 3 3.5 4 4.5];

for i = 1:length(x)
    sum = 0;
    for j = 1:n
        prod = 1;
        for k = 1:n
            if j ~= k
                prod = prod * ((x(i) - dataX(k)) / (dataX(j) - dataX(k)));
            end
        end
        sum = sum + prod * dataY(j);
    end
    y(i) = sum;
end

plot(dataX, dataY, 'b.-')
hold on
plot(x, y, 'ro')
legend('Original Data', 'Interpolated Points')
xlabel('x')
ylabel('y')
title('Lagrange Interpolation')
grid on
