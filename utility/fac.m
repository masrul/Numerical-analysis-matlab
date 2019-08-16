function [a]=fac(b)
a=1;
if b<0
    error('arrgument must be positive integer');
elseif b~=fix(b)
    error('arrgument must be positive integer');
elseif b==0;
    a=1;
else
    for i=1:b
        a=a*i;
    end
end