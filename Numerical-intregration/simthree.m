%simpson 1/3
function[intregration ]= simthree(x0,xn,n)
check=n/3;
if fix(check)~=check
    error('divison number must be multiple of 3')
end
h=(xn-x0)/n;
x=(x0+h):h:xn;
a=0;
for i=1:3:(n-1)
    a=a+3*fx(x(i));
end
for i=2:3:(n-1)
    a=a+3*fx(x(i));
end
for i=3:3:(n-3)
    a=a+2*fx(x(i));
end
intregration=((3*h)/8)*(fx(x0)+a+fx(xn));

