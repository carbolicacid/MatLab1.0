clc;
close all;
clear;
f = @(x) exp(x);   
x0 = 1;            
exact = exp(x0);   
h = 10.^-(1:10);   

for i = 1:length(h)
    df(i) = (f(x0 + h(i)) - f(x0)) / h(i);   
    err(i) = abs(df(i) - exact);             
end


disp('   h          Derivative      Error')
disp([h' df' err'])

