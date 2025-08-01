clc;
close all;
clear;
% Part (a)
A = [17 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16];
y = [4
    3
    2
    1];
x =A \ y;
% Part (b)
m = [3 -1 -2; 1 -6 3; 2 3 -6];
n = [1; 0; -6];
k = m \ n