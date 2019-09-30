% Sample code to ouput a Fibonacci series

clear all
clc 

x1 = 0; %Initialize first value
x2 = 1; %Initialize second value
F = zeros(1,10); %Initialize an empty array up to however many results needed.
i=1; % Start a counter variable
while i<=10 % Start a 'while-loop' to match the same number of elements in the empty array.
    x3 = x1+x2; % Condition
    F(i)= x1; % Storing the first value in the array at position i
    F(i+1) = x2; % SToring the 2nd value at position i+1
    i = i+1; % Counter variable increases by 1
    x1 = x2; % New x1 value is now the x2 value
    x2 = x3; % New x2 value is now the x3 value
end
F