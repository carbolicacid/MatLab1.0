clc;
close all;
clear ;
f = @(x) 20*(1-exp(-x/3));
a = 0;
b = 18;
h = 0.01;
x = a:h:b;
fx = f(x);
n = length(x);
s = 0;
for i =1:n
if(i == 1 || i==n)
s = s + fx(i);
elseif mod(i,2) == 0 

s = s + 4*fx(i);
else
s = s + 2*fx(i);
end
end
 I = (1/5*900)*(h/3)*(s)
