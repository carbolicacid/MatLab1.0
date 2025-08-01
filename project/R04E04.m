% LAGRANGE INTERPOLATION POLYNOMIAL
clc;
clear;
close all;

dataX = 0:6;
dataY = [0 0.8415 0.9093 0.1411 -0.7568 -0.9589 -0.2794];
n = length(dataX);
x = 3.4;
sum = 0;

for j = 1:n
    prod = 1;
    for k = 1:n
        if j ~= k
            prod = prod * (x - dataX(k)) / (dataX(j) - dataX(k));
        end
    end
    sum = sum + prod * dataY(j);
end
y = sum; 
plot(dataX, dataY) 
hold on
plot(x, y, 'o')

