clc;
clear;

q='aaaabbbaaaabbbbb0';
counta=0;
countb=0;
n=0;

for i=1:length(q)
    
    if(q(i)=='a' && q(i+1)=='a')
        counta=counta+1;
        
    elseif(q(i)=='a' && q(i+1)=='b')
        counta=counta+1;
        n=n+1;
        e(n)=counta;
        counta=0;
           
    elseif(q(i)=='b' && q(i+1)=='b')
        countb=countb+1;
        
    elseif(q(i)=='b' && q(i+1)=='a')  
        countb=countb+1;
        n=n+1;
        e(n)=countb;
        countb=0;
        
    elseif(q(i)=='a' && q(i+1)=='0')
        counta=counta+1;
        n=n+1;
        e(n)=counta;
        counta=0;
        
    elseif(q(i)=='b' && q(i+1)=='0')
        countb=countb+1;
        n=n+1;
        e(n)=countb;
        countb=0;
          
    end
end
disp('encoded=')
disp(e)

        

