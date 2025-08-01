clc
close all;
clear all;
x=[1:7];
y=[0.5 2.5 2.0 4.0 3.5 6.0 5.5];
n=length(x);
sumx=sum(x);
sumxsqrt=sum(x.^2);
sumy=sum(y);
sumxy=sum(x.*y);
A=[n sumx
    sumx sumxsqrt];
B=[sumy
    sumxy];
a=A\B;
ym=a(1)+a(2)*x;
plot(x,y,'ro');
hold on
plot(x,ym);
xlabel ('x axis');

ylabel('y axis');



