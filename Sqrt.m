% This script evaluates the square root of a number to the square root of
% the same number, n times.
% (((sqrt(s)^sqrt(s))^sqrt(s))^sqrt(s))^sqrt(s) ...... and so on.

clear all
clc
n = 3; %Number of times you want to raise the power
s = 2; %Integer of choice
A = sqrt(s)*ones(1,n); %Create an array with the square root of the number, s
t = sqrt(s);
for i = 1:length(A)
    t = t^A(i);
end
t
A
