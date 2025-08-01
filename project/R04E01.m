clc;
close all;
clear;

A = [3 2 -4];
B = [2 0 0 -2];
C = conv(A, B);

disp('Coefficient of A(x):')
disp(A)
disp('Coefficient of B(x):')
disp(B)
disp('Coefficient of C(x):')
disp(C)

rA = roots(A);
rB = roots(B);
rC = roots(C);

disp('Roots of A(x):')
disp(rA)
disp('Roots of B(x):')
disp(rB)
disp('Roots of C(x):')
disp(rC)

fprintf('\nC(x) = ')
fprintf('%+g*x^%d ', [C; length(C)-1:-1:0])
fprintf('\n')
