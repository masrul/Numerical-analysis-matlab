
%a=input('co-efficient matrix');
%b=input('constant matrix');
a=[4 2 1;6.25 2.5 1;9 3 1];
b=[8.57;10;12];
n=length(a);

for i=1:n-1
    for j=i+1:n
        m=a(j,i)/a(i,i);
        a(j,:)=a(j,:)-m*a(i,:)
        b(j)=b(j)-m*b(i)
    end
end

for i=n:-1:2
    for j=i-1:-1:1;
        m=a(j,i)/a(i,i);
        a(j,:)=a(j,:)-a(i,:)*m;
        b(j)=b(j)-b(i)*m;
    end
end
for k=1:n
    x(k)=b(k)/a(k,k);
end
x
a
b