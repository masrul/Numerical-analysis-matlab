x = [1 3 2 4 3 5]
k=0;
  for i=1:length(x)
     if mod(x(i),2)~=0
      k=k+1;
     a(k)=x(i);
    end
  end
 a=sort(a);
 y(1)=a(1);
 k=1;
   for i=2:length(a)
       
       if a(i)~=a(i-1)
           k=k+1;
           y(k)=a(i);
       end
   end
   
           