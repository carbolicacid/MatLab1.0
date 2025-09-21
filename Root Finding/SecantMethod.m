clc;
clear all;
close all;
intervals = [1 3;0 -2;-4 -2];

for k = 1:size(intervals,1)
    row = intervals(k,:);   % take the whole row
    p = row(1);
    q = row(2);
xk=p; %initial guess1
xkminus1=q;%initial guess2
tol=0.001; %tolerance on f(root)=yk
f=@(x) x^3+2*x^2-5*x-6; %anonymous function
yk=f(xk);%evaluating yk
ykminus1=f(xkminus1);%evaluating ykminus1
iter=0;%number of iterations
while abs(yk)> tol%checking if a solution has been reached
xkplus1=xk-(xkminus1-xk)/(ykminus1-yk)*yk;%new approximation
ykplus1=f(xkplus1);
%creating new pair of guesses
xkminus1=xk;
ykminus1=yk;
xk=xkplus1;
yk=ykplus1;
iter=iter+1;
end
root=xk;
disp(iter);
disp(root)
end