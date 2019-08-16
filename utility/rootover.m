function [y]=rootover(x);
if x<0
    error('argument must be positive')
else
a=x/2; % initializing a
b=.5*(a+x/a);
while abs(a-b)>0.001
    a=b;
    b=.5*(a+x/a);
end
y=b;
end