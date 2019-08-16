%weddle
function[intregration ]= weddle(x0,xn,n)
check=n/6;
if fix(check)~=check
    error('divison number must be multiple of 6')
end
h=(xn-x0)/n;
x=(x0+h):h:xn;
a=0;

for i=1:6:(n-5)
    a=a+5*fx(x(i));
end
for i=2:6:(n-4)
    a=a+fx(x(i));
end
for i=3:6:(n-3)
    a=a+6*fx(x(i));
end
for i=4:6:(n-2)
    a=a+fx(x(i));
end
for i=5:6:(n-1)
    a=a+5*fx(x(i));
end
for i=6:6:(n-6)
    a=a+2*fx(x(i));
end
intregration=((3*h)/10)*(fx(x0)+a+fx(xn));
