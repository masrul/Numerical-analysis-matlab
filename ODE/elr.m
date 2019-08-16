function[u]=elr(xf,x0,y0,h)
x=x0:h:xf;
n=length(x);
for i=1:n-1
   
   ynew=y0+dfx(x0,y0)*h;
   y0=ynew;
    x0=x0+h;
end
u= ynew;  
  
end