clc;
close all;
clear all;
x=[1:3];
y=[0.5 1.7 3.4];
y=log(y);
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
p=exp(a(1));
q=a(2);

ym=p.*(exp(q.*x));

plot(x,y,'ro');
grid on;
hold on
plot(x,ym,'g');
xlabel ('x axis');

ylabel('y axis');
