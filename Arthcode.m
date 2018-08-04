clc;
clear all;
close all;

high = 1;
low = 0;
range = high - low;
data = 'SWISS_MISS';
z = length(data);

disp(data)

for i = 1:1:z
    switch data (i)
        case 'S'
            low = low + range * 0;
            high = low + range *0.2;
        case 'W'
            low = low + range * 0.2;
            high = low + range * 0.5;
        case 'I'
            low = low + range * 0.5;
            high = low + range * 0.6;
        case 'M'
            low = low + range * 0.6;
            high = low + range * 0.8;
        case '_'
            low = low + range * 0.8;
            high = low + range * 1;
    end
    
end

disp('low =')
disp(low)
disp('high =')
disp(high)

