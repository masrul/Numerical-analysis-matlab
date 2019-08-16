%newton
function[root nitteration]=nr(x)
i=0;
while i>=0 
    i=i+1;
 xold=x;
fx=func(x);
dfx=dfunc(x);
xnew=x-(fx/dfx);
x=xnew;
if abs(xold-xnew)<0.001
end
root=x;
nitteration=i;
end