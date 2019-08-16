%function[z]=sorting(a)
a=[1 5 3 0 2 7 0 8 9 1 0] ;
n=length(a);
b=1:(n+2);
b(2:(n+1))=a;
j=0;
for i=2:n+1
   if b(i-1)==0|b(i+1)==0
       j=j+1;
       new(j)=b(i);
   end
end


m=length(new);
max=new(1); % initial guess
for i=2:m
        if max < new(i)
            mid=max;
            max=new(i);
            new(i)=mid;  
        end
end
z=max
