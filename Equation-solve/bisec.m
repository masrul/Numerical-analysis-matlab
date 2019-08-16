%bisectionmethod
function [root,nitteration]=bisec(x1,x2)
fx1=func(x1);
fx2=func(x2);
i=0;
if (fx1*fx2)>0
    error('reassign arguments according to bisection method')
end

    while  i>=0 
        i=i+1;
      fx1=func(x1);
      fx2=func(x2);
    xnew=(x1+x2)/2;
    fxnew=func(xnew);
    if (fx1*fxnew)>0
        x1=xnew;
    else
        x2=xnew; 
    end
    if abs(x1-x2)<0.001
        break
    end
    end
    root=xnew;
    nitteration=i;
end