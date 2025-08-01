clc;
close all;
clear ;
x=[0:5];
y=[2.1 7.7 13.6 27.2 40.9 61.1];
n=length(x);
sumx=sum(x);
sumxsqrt=sum(x.^2);
sumxcube=sum(x.^3);
sumxfour=sum(x.^4);
sumy=sum(y);
sumxy=sum(x.*y);
sumxsqrty=sum((x.^2).*y);
A=[n sumx sumxsqrt
    sumx sumxsqrt sumxcube
    sumxsqrt sumxcube sumxfour];
B=[sumy
    sumxy
    sumxsqrty];
a=A\B;
ym=a(1)+a(2).*x+a(3).*(x.^2);
a0=a(1)
a1=a(2)
a2=a(3)
plot(x,y,'r');
grid on;
hold on
plot(x,ym,'go');
xlabel('X Axis');
ylabel('Y Axis');



