%Copy the components of one vector into another

function [y_out] = CopyVec(x,y)

%x = [1 2 3 4 5 6 7 8];
%y = [0 1 0 1 0 1 0 1];
[mx, nx] = size(x);
[my, ny] = size (y);
y_out = zeros(mx,1);

%Check if x and y are column or row vectors:
if(mx ~= 1 && nx ~= 1) | (my ~=1 && ny~=1)
    y_out = 'Failed because neither x or y are column or row vectors';
    return
end
%Check if x and y are of equal length:
if(mx*nx ~= my*ny)
    y_out = 'Failed because the vectors are of different lengths';
    return
end

%Check if x and y are column or row vectors and then run the routine:
if (nx == 1) %x is a column vector
    if (ny == 1) %y is a column vector
        for i = 1:mx
            y(i,1) = x(i,1);
        end
    else %y is a row vector
        for i = 1:mx
        y(1,i) = x(i,1);
        end
    end
else %x is a row vector
    if(ny == 1) %y is a column vector
        for i = 1:nx
            y(i,1) = x(1,i);
        end
    else %y is a row vector
        for i = 1:nx
            y(1,i) = x(1,i);
        end
    end
end
y_out = y;
y_out
end


