function [alpha] = SliceDice(x, y)
tic
alpha = 0;
i=1;
%x = [1;2;3;4;5;6;7;8;9];
%y = [9;8;7;6;5;4;3;2;1];

xt = single.empty(0,0);
yt = single.empty(0,0);

while(size(xt,1)<size(x,1))
    xt(i,1) = x(i,1);
    yt(i,1) = y(i,1);
    alpha = alpha + (xt(i)*yt(i));
    i = i+1;
end
toc
end
