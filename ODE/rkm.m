function[u]=rkm(xf,x0,y0,h)
x=x0:h:xf;
n=length(x);
for i=1:n-1
k1=dfx(x0,y0);
k2=dfx(x0+0.5*h,y0+.5*k1*h);
k3=dfx(x0+0.5*h,y0+.5*k2*h);
k4=dfx(x0+h,y0+k2*h);
y=y0+(1/6)*(k1+2*k2+2*k3+k4)*h;
y0=y;
x0=x0+h;
end
u=y;
end