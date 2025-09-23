clc;
close all;
clear;

% Data from Table 7.1
x = [1.6, 1.8, 2.0, 2.2, 2.4, 2.6, 2.8, 3.0, 3.2, 3.4, 3.6, 3.8];
f = [4.953, 6.050, 7.389, 9.025, 11.023, 13.468, 16.445, 20.086, 24.533, 29.964, 36.598, 44.701];

% (a) h = 0.2 (all points)
idx_a = 1:length(x);
h1 = x(2)-x(1);
sum1 = f(idx_a(1)) + f(idx_a(end));
for i = 2:length(idx_a)-1
    sum1 = sum1 + 2*f(idx_a(i));
end
I1 = (h1/2)*sum1;

% (b) h = 0.4 (every other point)
idx_b = 1:2:length(x);
h2 = x(idx_b(2))-x(idx_b(1));
sum2 = f(idx_b(1)) + f(idx_b(end));
for i = 2:length(idx_b)-1
    sum2 = sum2 + 2*f(idx_b(i));
end
I2 = (h2/2)*sum2;

% (c) h = 0.6 (every third point)
idx_c = 1:3:length(x);
h3 = x(idx_c(2))-x(idx_c(1));
sum3 = f(idx_c(1)) + f(idx_c(end));
for i = 2:length(idx_c)-1
    sum3 = sum3 + 2*f(idx_c(i));
end
I3 = (h3/2)*sum3;

% True value (f(x) = e^x)
true_val = exp(3.8) - exp(1.6);

fprintf('Exercise 1 Results:\n');
fprintf('(a) h = 0.2: I = %.6f\n', I1);
fprintf('(b) h = 0.4: I = %.6f\n', I2);
fprintf('(c) h = 0.6: I = %.6f\n', I3);
fprintf('True value: I = %.6f\n', true_val);
fprintf('Errors: (a) %.6f, (b) %.6f, (c) %.6f\n', ...
        abs(I1-true_val), abs(I2-true_val), abs(I3-true_val));
