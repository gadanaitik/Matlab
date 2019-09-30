% A code to evaluate sqrt(2) raised to sqrt(2) a certain number of times.
% ((sqrt(2)^sqrt(2))^sqrt(2))^sqrt(2) ......

clear all
clc

A = sqrt(2)*ones(1,8);
t = sqrt(2);
for i = 1:length(A)
    t = t^A(i);
    i=i+1;
end
t
A