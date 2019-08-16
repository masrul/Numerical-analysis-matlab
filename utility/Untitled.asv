a = [ 1  2  1 15;
      0  8  5  9];
x=a(:,1);
row=length(x);
for i=1:row
   m(i)=a(i,1)*0.25+a(i,2)*.10+a(i,3)*0.05+a(i,4)*0.01;
end
m

n=length(m);
max=m(1); % initial guess
for i=2:n
        if max < m(i)
            mid=max;
            max=m(i);
            m(i)=mid;  
        end
end
 max

 
 
 m1=m;
max1=max;

for d=1:length(m1)
     if m1(d)==max1
         answer=d;
     end
 end
 b=answer
 
 