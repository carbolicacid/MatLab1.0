clc;
close all;
clear;
q1 = input('Enter quiz 1 mark: ');
q2 = input('Enter quiz 2 mark: ');
q3 = input('Enter quiz 3 mark: ');
q4 = input('Enter quiz 4 mark: ');

avg = averagebestthree(q1, q2, q3, q4);

fprintf('Average of best 3 quizzes is: %.2f\n', avg);