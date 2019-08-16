function[u]=meu(xf,x0,y0,h)
x=x0:h:xf;
n=length(x);
for i=1:n-1
   dfx1=dfx(x0,y0);
ynew=y0+dfx1*h;
xnew=x0+h;
    dfx2=dfx(xnew,ynew);
   dfxac=(dfx1+dfx2)/2;
     yac=y0+dfxac*h;
 y0=yac;
 x0=xnew;
end

u=yac;  
   
end