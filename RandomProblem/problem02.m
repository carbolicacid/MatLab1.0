clc;
close all;
clear;
h=0.01;
x=10:0.1:22;
y= @(x) 3*x.^3+2*x.^2-6*x+7; 
for i=2:length(x)-1
    dv(i-1)= (y(x(i+1))-y(x(i-1)))/2*h;
end
xv=x(2:length(x)-1);
for i=2:length(x)-1
    da(i-1)= (y(x(i+1))-y(x(i-1)))/2*h;
end
xa=x(2:length(x)-1);
subplot 311
plot (x,y(x))
subplot 312
plot (xv,dv)
subplot 313
plot(xa,da)

