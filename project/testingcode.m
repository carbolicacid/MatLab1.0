clc;
close all;
clear all;

x = [1:5];
y = [0.5 1.7 3.4 5.7 8.4];
logx = log(x);
logy = log(y);
n = length(logx);
sumx = sum(logx);
sumxsqrt = sum(logx.^2);
sumy = sum(logy);
sumxy = sum(logx.*logy);
A = [n sumx
     sumx sumxsqrt];
B = [sumy
     sumxy];
a = A\B;
a2 = exp(a(1));
b2 = a(2);

y_fit = a2*(x.^b2);

figure;
plot(x, y, 'ro', 'MarkerFaceColor', 'r');
hold on;
plot(x, y_fit, 'b-', 'LineWidth', 2);
grid on;
xlabel('x');
ylabel('y');
legend('Data', ['Fit: y = ' num2str(a2) 'x^{' num2str(b2) '}']);
title('Power-Law Fit');