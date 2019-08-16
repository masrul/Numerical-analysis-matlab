function[z]=fibb(n)
f(1)=0;
f(2)=1;
for i=3:n
    f(i)=f(i-1)+f(i-2);
end
z=f;