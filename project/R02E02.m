clc;
close all;
clear all;
x=[1:5];
y=[0.5 1.7 3.4 5.7 8.4];
x0=log(x);
y0=log(y);
n=length(x0);
sumx=sum(x0);
sumxsqrt=sum(x0.^2);
sumy=sum(y0);
sumxy=sum(x0.*y0);
A=[n sumx
    sumx sumxsqrt];
B=[sumy
    sumxy];
a=A\B;
a2=exp(a(1))
b2=a(2)

ym=a2*(x.^b2);

plot(x,y,'ro');
grid on;
hold on
plot(x,ym,'g');
xlabel ('x axis');

ylabel('y axis');
