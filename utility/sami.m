
y=[2 0 4; 2 4 8] 
ln=length(y(1,:)) 
b=y(:,ln)
y(:,ln)=[];
a=y
n=length(a);   
for i=1:n-1 
    for j=i+1:n 
        m=a(j,i)/a(i,i); 
        a(j,:)=a(j,:)-m*a(i,:); 
        b(j)=b(j)-m*b(i) ;
    end 
end 
  
 
for i=n:-1:2 
    for j=i-1:-1:1; 
        m=a(j,i)/a(i,i); 
        a(j,:)=a(j,:)-a(i,:)*m; 
        b(j)=b(j)-b(i)*m; ;
    end 
end 
for k=1:n 
    v(k)=b(k)/a(k,k); 
end 
v