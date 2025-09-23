clc;
close all;
clear;
f = @(x) x .* exp(-2*x.^2);
a = 0;
b = 2;
h = 0.001;   
x = a:h:b;
n = length(x);
sum_val = 0;
for i = 1:n
    if (i==1 || i==n)
        sum_val = sum_val + f(x(i));
    else
        sum_val = sum_val + 2*f(x(i));
    end
end

I = (h/2) * sum_val;
true_val = 0.249916;

fprintf('Exercise 4 Results:\n');
fprintf('Trapezoidal (small h) result: %.6f\n', I);
fprintf('True value: %.6f\n', true_val);
fprintf('Error: %.6f (%.4f%%)\n', abs(I-true_val), abs(I-true_val)/true_val*100);
