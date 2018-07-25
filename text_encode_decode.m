clc;
clear;

q='aabbaaabbaabababb0';
counta=0;
countb=0;
n=0;
j=0;
e=[];
first_a=0;
first_b=0;

% encoding


if(q(1)=='a')                         %checking initial symbol
    first_a=1;
else
    first_b=1;
end


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


        
% decoding


if(first_a)
    
for i=1:length(e)
    
    if(mod(i,2)~=0)
    j=j+1;    
    for j=j:(e(i)+j-1)
        d(j)='a';
    end
    
    elseif(mod(i,2)==0) 
    j=j+1;    
    for j=j:(e(i)+j-1)
        d(j)='b';
    end
    
    end
end

elseif(first_b)
    
for i=1:length(e)
    
    if(mod(i,2)~=0)
    j=j+1;    
    for j=j:(e(i)+j-1)
        d(j)='b';
    end
    
    elseif(mod(i,2)==0)  
    j=j+1;    
    for j=j:(e(i)+j)
        d(j)='a';
    end
    
    end
end

end

disp('decoded=')
disp(d)

% output
% encoded=
%      2     2     3     2     2     1     1     1     1     2
% 
% decoded=
% aabbaaabbaabababb
