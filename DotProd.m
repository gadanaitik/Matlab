function [alpha] = DotProd (x,y)

alpha = 0;
[mx,nx] = size(x);
[my,ny] = size(y);

%Check if x and y are row or column vectors:
if(mx ~= 1 && nx ~= 1) || (my ~= 1 && ny ~= 1)
    disp ('Test 1 FAILED: x and y need to be either column or row vectors')
else
    disp ('Test 1 PASSED: x and y are column or row vectors')
end

%Check if both x and y are of the same size:
if(mx*nx == my*ny)
    disp ('Test 2 PASSED: x and y are of the same length')
else
    disp ('Test 2 FAILED: x and y need to be of the same length')
end

%Conditions:
if(mx == 1) && (mx*nx == my*ny) %x is a row vector
    if(my == 1) %y is a row vector
        for i = 1:nx
        alpha = alpha + (x(1,i)*y(1,i));
        end
    else %y is a column vector
        for i = 1:nx
        alpha = alpha + (x(1,i)*y(i,1));
        end
    end
else
    disp ('Test 3 FAILED: x and y need to be of the same length')
end
if(nx == 1) && (mx*nx == my*ny) %x is a column vector
    if(my == 1) %y is a row vector
        for i = 1:mx
        alpha = alpha + (x(i,1)*y(1,i));
        end
    else %y is a column vector
        for i = 1:mx
        alpha = alpha + (x(i,1)*y(i,1));
        end
    end
else
    disp ('Test 4 FAILED: x and y need to be of the same length')
end
end
