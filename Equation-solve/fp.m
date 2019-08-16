function[root nitteration]=fp(x)
i=0;
while i>=0 
    i=i+1;
  xold=x;
xnew=Tcalc(x);
x=xnew;
if abs(xold-xnew)<0.001
    break
end 
end
root=x;
nitteration=i;
end

