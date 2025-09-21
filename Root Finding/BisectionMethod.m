clc; 
close all;
% clear all;
f=str2func(['@(x)',input('Enter the fumction in terms of x: ','s')]); %function declared as a numerical function
tol=0.01;%value of tolerance of the interval (xup-xlow)
%two initial guesses
xlow=input('Enter first guess: ');
xup=input('Enter second guess: ');
ylow=f(xlow);
yup=f(xup);
%checking whether a root is in this interval
if ylow*yup>0
disp('Root is not likely in this interval');
else disp('Root is in this interval');
iter=0; %calculating iterations
while (xup-xlow>=tol) %assuming xup>xlow
iter=iter+1;
xmid=(xlow+xup)/2;%calculating xmid
ymid=f(xmid);
if ymid==0
break; %if xmid=root, break the loop
else %otherwise update xup or xlow
ylow=f(xlow);
yup=f(xup);
if ymid*ylow>0
xlow=xmid;
else xup=xmid;
end
end
end
root=xmid;
disp(root);
disp(iter);
end
pause;