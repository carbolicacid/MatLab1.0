clc;
clear;
close all;

dataX = 0:10;
dataY = sin(dataX);
n = length(dataX);
x = 0:0.25:10;
y = zeros(size(x));

for i = 1:length(x)
    for j = 1:n-1
        if dataX(j) <= x(i) && x(i) <= dataX(j+1)
            x1 = dataX(j); x2 = dataX(j+1);
            y1 = dataY(j); y2 = dataY(j+1);
            break;
        end
    end
    y(i) = ((x(i)-x2)/(x1-x2))*y1 + ((x(i)-x1)/(x2-x1))*y2;
end

plot(dataX, dataY, 'b.-')
hold on
plot(x, y, 'ro')
legend('Original Data', 'Interpolated Points')
xlabel('x')
ylabel('y')
title('Linear Interpolation')
grid on
