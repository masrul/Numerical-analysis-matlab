%trapizoidal rule
function[intregration]= trapi(x0,xn,n)
h=(xn-x0)/n;
x=(x0+h):h:xn;
a=0;
for i=1:(n-1)
    a=a+2*fx(x(i));
end
intregration=(.5*h)*(fx(x0)+a+fx(xn));
