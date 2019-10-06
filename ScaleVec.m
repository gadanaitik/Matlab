%Scaling a vector by a scalar quantity

function [x_out] = ScaleVec (alpha, x)

%x = [1 2 3 4];
%alpha = 3;
[mx, nx] = size (x);
%x_out = zeros(1, mx);

%Check if alpha is a scalar:
if(isscalar(alpha)==1)
    x_out = 'Test Passed: alpha is a scalar quantity'
else
    x_out = 'Test Failed: alpha is not a scalar'
end

%Check if x is a column or row vector:
if(mx ~= 1 && nx == 1) && (isscalar(alpha)==1)
    x_out = 'Test Passed: x is a column vector'
    x_out = alpha*x';
else
    if(mx == 1 && nx ~= 1) && (isscalar(alpha)==1)
        x_out = 'Test Passed: x is a row vector'
        x_out = alpha*x;
    else
        x_out = 'Test Failed';
    end
end
end
