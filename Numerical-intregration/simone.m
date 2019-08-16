%simpson 1/3
function[intregration ]= simone(x0,xn,n)
check=n/2;
if fix(check)~=check
    error('divison number must be multiple of 2')
end
h=(xn-x0)/n;
x=(x0+h):h:xn;
a=0;
for i=1:2:(n-1)
    a=a+4*fx(x(i));
end
for i=2:2:(n-2)
    a=a+2*fx(x(i));
end
intregration=(h/3)*(fx(x0)+a+fx(xn));

