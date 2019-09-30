%Testing for-loops to produce results stored in an array named 'valueOfA'

clear all
clc

a = 0; % Initializing the value of 'a'
k = 0.5; % Setting variable 'k' to 0.5
n = 2; % Setting variable 'n' to 2
valueOfA = zeros(1,5); % Initializing an empty array with 1 row and 5 columns to values of 0
for m = 1:5 % Starting the for-loop at m=1 and ending at m=5.
    a = a + (a*k) + n; % Condition for the for-loop.
    valueOfA(m) = a; % Updating the empty array with values of 'a' calculatedf at every loop.
end
valueOfA % Outputs the array 'valueOfA'

% We can play around with this code by changing the initial value of 'a' and 
% changing the size of the loop. But make sure the initialized empty array
% 'valueOfA' has the same length as the loop size or it will result in an
% 'index error'.