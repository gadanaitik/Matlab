% Newton's Method Code with 4 different starting values.

clear all
clc 

f=@(x) x+((10*x)/(1+x))-1; % Define the function
df=@(x)(10/(1+x)^2)+1; % Derivative of the function
x0=1.6; % Initial value guess
%x0=1.4999;
%x0=1.5;
%x0=1;
x1 = x0 - (f(x0)/df(x0)); % Definition of Newton's Method
err = abs(x1-x0);
iter=0; % Initialize the iteration
while err>=10^-7 % Run the while-loop until this condition is met. 
   x2 = x1 - (f(x1)/df(x1));
   err=abs(x2-x1);
   iter=iter+1;
   x1=x2;
end
iter
err
x2

