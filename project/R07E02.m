clc;
close all;
clear;

% Data from Table 7.1
x = [1.6, 1.8, 2.0, 2.2, 2.4, 2.6, 2.8, 3.0, 3.2, 3.4, 3.6, 3.8];
f = [4.953, 6.050, 7.389, 9.025, 11.023, 13.468, 16.445, 20.086, 24.533, 29.964, 36.598, 44.701];

idx_13 = 1:11;       
x13 = x(idx_13);
y13 = f(idx_13);
h13 = x13(2) - x13(1);
n13 = length(x13);

sum13 = 0;
for i = 1:n13
    if i==1 || i==n13
        sum13 = sum13 + y13(i);
    elseif mod(i,2)==0
        sum13 = sum13 + 4*y13(i);
    else
        sum13 = sum13 + 2*y13(i);
    end
end
I_simp13 = (h13/3) * sum13;

idx_38 = 1:10;       
x38 = x(idx_38);
y38 = f(idx_38);
h38 = x38(2) - x38(1);
n38 = length(x38);

sum38 = y38(1) + y38(end);
for i = 2:n38-1
    if mod(i-1,3)==0
        sum38 = sum38 + 2*y38(i);
    else
        sum38 = sum38 + 3*y38(i);
    end
end
I_simp38 = (3*h38/8) * sum38;

fprintf('Exercise 2 Results:\n');
fprintf('(a) Simpson 1/3 rule (x=1.6 to 3.6): I = %.6f\n', I_simp13);
fprintf('(b) Simpson 3/8 rule (x=1.6 to 3.4): I = %.6f\n', I_simp38);
