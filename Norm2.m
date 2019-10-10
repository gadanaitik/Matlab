function [alpha] = Norm2(x)

l = 0;
[mx,nx] = size(x);

%Check if x is a row or column vector:

if(mx == 1) || (nx == 1)
    disp('Test Passed');
else
    disp('Test Failed: x needs to be a column or row vector');
end

%Conditions for each case:
if(nx == 1) %x is a column vector
    for i = 1:mx
    l = l+x(i)^2;
    end
else %x is a row vector
    for i = 1:nx
    l = l+x(i)^2;
    end
end
alpha = sqrt(l);
end
