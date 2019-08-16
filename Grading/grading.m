[A,B]=xlsread('Che310','sheet1','A3:C11');
marks=A(:,3);
marks=round((marks/300)*100);
a=length(marks);

for i=1:a
    if marks(i) >=80
       GRADE(i)={'A+'};
        GPA(i)=4;
    
    elseif marks(i) >=75
       
       GPA(i)=3.75;
     GRADE(i)={'A'};
    elseif marks(i) >=70
        
       GPA(i)=3.5;
     GRADE(i)={'A-'};
    elseif marks(i) >=65
      
        GPA(i)=3.25;
     GRADE(i)={'B+'};
    elseif marks(i) >=60
       
        GPA(i)=3;
     GRADE(i)={'B'};
    elseif marks(i) >=55
       
        GPA(i)=2.75;
     GRADE(i)={'B-'};
    elseif marks (i)>=50
       
        GPA(i)=2.50;
    GRADE(i)={'C+'};
    elseif marks(i) >=45
        
        GPA(i)=2.25;
     GRADE(i)={'C'};
    elseif marks(i)>=40
        GPA(i)=2;
         GRADE(i)={'D'};
    else
         GPA(i)=0;
         GRADE(i)={'F'};
    end
end
GPA=GPA';
GRADE=GRADE';
xlswrite('che310',GPA,'sheet1','D4:D11')
xlswrite('che310',GRADE,'sheet1','E4:E11')
xlswrite('che310',{'GPA'},'sheet1','D3')
xlswrite('che310',{'GRADE'},'sheet1','E3')



