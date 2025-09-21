clc;
close all;
clear; 
f = @(x) x^3+2*x^2-5*x-6; 
tol=0.001;
intervals = [1 2; -2 -1 ;-3 -1];

for k = 1:size(intervals,1)
    row = intervals(k,:);   % take the whole row
    xlow = row(1);
    xup  = row(2);

ylow=f(xlow);
yup=f(xup);
if ylow*yup>0
disp('Root is not likely in this interval');
else
    disp('Root is in this interval');
iter=0; 
while (xup-xlow>=tol) 
iter=iter+1;
xmid=(xlow+xup)/2;
ymid=f(xmid);
if ymid==0
break; 
else 
ylow=f(xlow);
yup=f(xup);
if ymid*ylow>0
xlow=xmid;
else
    xup=xmid;
end
end
end
root=xmid;
disp(root);
disp(iter);
end
end