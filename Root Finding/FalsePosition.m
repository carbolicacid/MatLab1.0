clc;
close all;
clear; 
f = @(x) x^3+2*x^2-5*x-6; 
tol=0.001;
intervals=[1 3; 0 -2; -4 -2];

for k = 1:size(intervals,1)
    row = intervals(k,:);   % take the whole row
    xlow = row(1);
    xup  = row(2);

ylow=f(xlow);
yup=f(xup);
%checking whether a root is in this interval
if ylow*yup>0
disp('Root is not likely in this interval');
else disp('Root is in this interval');
xm=xup-f(xup)*(xlow-xup)/(f(xlow)-f(xup));%calculating xm
ym=f(xm);
iter=1; %calculating iterations
while (abs(ym)>=tol) %assuming xup>xlow
ylow=f(xlow);
yup=f(xup);
if ym*ylow>0
xlow=xm;
else xup=xm;
end
xm=xup-f(xup)*(xlow-xup)/(f(xlow)-f(xup));%calculating xm
ym=f(xm);
iter=iter+1;
end
root=xm;
disp(root);
disp(iter);
end
end