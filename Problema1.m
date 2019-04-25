clc
clear 
close all

z = 4;
x = 12;
y = 0;
for i = 1 : 6
    if(i == 1)
        m(i) = z + y;
    end
    if(i == 2)
        m(i) = 12 +4;
    end
    if(i > 2)
        y = x + 8;
        x = y;
        m(i) = m(i-1) + y;
    end
end

M = [2: 2: 12; 1: 4: 21; 3:-3:-12; m ;3:12:63]