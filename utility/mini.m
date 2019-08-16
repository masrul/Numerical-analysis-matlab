function[z]=mini(a)
n=length(a);
max=a(1); % initial guss
for i=2:n
        if max > a(i)
            mid=max;
            max=a(i);
            a(i)=mid;  
        end
end
z=max;