%secant method
function[root nitteration]=sec(x1,x2)
i=0;
   while i>=0
    i=i+1;
fx1=func(x1);
fx2=func(x2);
dfx=(fx1-fx2)/(x1-x2);
x3=x2-(fx2/dfx);
x1=x2;
x2=x3;
        if  abs(x1-x2)<0.001
             break
        end
   end
root=x3;
nitteration=i;
end
