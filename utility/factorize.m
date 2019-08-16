function [z]=factorize(a)
j=0;
if a>0 & fix(a)==a
for i=1:a;
    b=a/i;
    if fix(b)==b
        j=j+1;
        z(j)=i;
    end
end
elseif a<0 & fix(a)==a
    for i=-1:-1:a;
    b=a/i;
    if fix(b)==b
        j=j+1;
        z(j)=i;
    end
    end
else
    error('arrgument must be integer')
end
if length(z)==2
    disp('This is  a prime number')
elseif a==1
    disp('This is a prime number')
else
    disp('This is not a prime number')
   
        
end