
a=[1 5 6;nan 2 6; 8 9 6]
k=0;
for i=1:length(a(:,1))
    c=0;
 for j=1:length(a(1,:))
    if a(i,j)==NaN
        c=1;
        break
    end        
 end
 c
    if c==0
        k=k+1;
        b(k,:)=a(i,:);
    end
end
y=b
