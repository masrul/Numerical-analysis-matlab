function [prime nprime]=primenum(a,b)
k=0;
x=0;
if fix(a)==a & fix(b)==b & a>0 & b>0 & a<b
   for i=a:b
       if i==1 |i==2| i==3
           check=0;
       else
       for j=2:fix(sqrt(i))
           c=i/j;
           check=0;
           if fix(c)==c 
              check=1;
               break
           end
       end
       end
       if check==0
           k=k+1;
           prime(k)=i;
       else
           x=x+1;
           nprime(x)=i;
       end
   end
else
   error('arguments must be positive integer and second  one must be greater than first one ')
end
end
    