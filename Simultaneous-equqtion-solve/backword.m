%backward
%backward elimination
%a=input('coefficient matrix');
%b=input('constant matrix');
a=[4 2 1;6.25 2.5 1;9 3 1];
b=[8.57;10;12];
n=length(a);

for i=n:-1:2
    for j=i-1:-1:1;
        m=a(j,i)/a(i,i);
        a(j,:)=a(j,:)-a(i,:)*m;
        b(j)=b(j)-b(i)*m;
    end
end
x=zeros(n,1);
x(1)=b(1)/a(1,1);
for k=2:n
    x(k)=(b(k)-a(k,1:k-1)*x(1:k-1))/a(k,k);
end
a 
x
