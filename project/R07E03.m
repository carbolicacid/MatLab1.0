clc;
close all;
clear;
n = 12;
f1 = @(x) 1./(1 + x.^2);     
f2 = @(x) x.^2 .* exp(-x);    
% (i) ∫ from -1 to 1
a1 = -1; b1 = 1;
h1 = (b1 - a1)/n;
sum1 = f1(a1) + f1(b1);
for i = 1:n-1
    sum1 = sum1 + 2*f1(a1 + i*h1);
end
I_trap1 = (h1/2)*sum1;

% (ii) ∫ from 0 to 4
a2 = 0; b2 = 4;
h2 = (b2 - a2)/n;
sum2 = f2(a2) + f2(b2);
for i = 1:n-1
    sum2 = sum2 + 2*f2(a2 + i*h2);
end
I_trap2 = (h2/2)*sum2;

% (b) Simpson's 1/3 Rule
% (i) ∫ from -1 to 1
sum13_1 = 0;
x1 = a1:h1:b1;
fx1 = f1(x1);
m1 = length(x1);
for i = 1:m1
    if i==1 || i==m1
        sum13_1 = sum13_1 + fx1(i);
    elseif mod(i,2)==0
        sum13_1 = sum13_1 + 4*fx1(i);
    else
        sum13_1 = sum13_1 + 2*fx1(i);
    end
end
I_simp1_13 = (h1/3)*sum13_1;

% (ii) ∫ from 0 to 4
sum13_2 = 0;
x2 = a2:h2:b2;
fx2 = f2(x2);
m2 = length(x2);
for i = 1:m2
    if i==1 || i==m2
        sum13_2 = sum13_2 + fx2(i);
    elseif mod(i,2)==0
        sum13_2 = sum13_2 + 4*fx2(i);
    else
        sum13_2 = sum13_2 + 2*fx2(i);
    end
end
I_simp2_13 = (h2/3)*sum13_2;

% (c) Simpson's 3/8 Rule
% (i) ∫ from -1 to 1
sum38_1 = f1(a1) + f1(b1);
for i = 1:n-1
    xi = a1 + i*h1;
    if mod(i,3)==0
        sum38_1 = sum38_1 + 2*f1(xi);
    else
        sum38_1 = sum38_1 + 3*f1(xi);
    end
end
I_simp1_38 = (3*h1/8)*sum38_1;

% (ii) ∫ from 0 to 4
sum38_2 = f2(a2) + f2(b2);
for i = 1:n-1
    xi = a2 + i*h2;
    if mod(i,3)==0
        sum38_2 = sum38_2 + 2*f2(xi);
    else
        sum38_2 = sum38_2 + 3*f2(xi);
    end
end
I_simp2_38 = (3*h2/8)*sum38_2;
%Results

fprintf('Trapezoidal Rule:\n');
fprintf('(i) ∫(1+x²)⁻¹ dx from -1 to 1: %.6f\n', I_trap1);
fprintf('(ii) ∫x²e⁻ˣ dx from 0 to 4: %.6f\n\n', I_trap2);

fprintf('Simpson 1/3 Rule:\n');
fprintf('(i) ∫(1+x²)⁻¹ dx from -1 to 1: %.6f\n', I_simp1_13);
fprintf('(ii) ∫x²e⁻ˣ dx from 0 to 4: %.6f\n\n', I_simp2_13);

fprintf('Simpson 3/8 Rule:\n');
fprintf('(i) ∫(1+x²)⁻¹ dx from -1 to 1: %.6f\n', I_simp1_38);
fprintf('(ii) ∫x²e⁻ˣ dx from 0 to 4: %.6f\n\n', I_simp2_38);
