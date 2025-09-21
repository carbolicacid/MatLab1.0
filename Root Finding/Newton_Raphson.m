clc;
clear all;
close all;
syms x; %declaring x as a symbol
fs=x^3+2*x^2-5*x-6;%f is a symbolic function
f=matlabFunction(fs);%converting f to numerical function
fderiv=matlabFunction(diff(fs));%differentiating f as symbolic function

%converting symbolic function to numerical function
xk=-2.5;%initial guess of root, xk
tol=0.001;%tolerance on f(root)=yk
iter=0;%number of iterations
while abs(f(xk))> tol %check if root has been reached
xkp1=xk-f(xk)/fderiv(xk);%calculating new approximation of root
xk=xkp1;%updating xk
iter=iter+1;
end
root=xk;
disp(root)
disp(iter)
