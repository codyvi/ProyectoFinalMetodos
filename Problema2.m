clc
clear 
close all

cara1 = randi([1,6], 1,1);

cara2 = randi([1,6],1,1);

suma = cara1 + cara2;

sumanueva = 0;

if(suma == 2 || suma == 3 || suma == 12)
   disp('Perdiste!')
else
    while(sumanueva ~= suma)
        cara1 = randi([1,6], 1,1)
        cara2 = randi([1,6], 1,1)
        sumanueva = cara1+cara2
        if(sumanueva == 7)
            disp('Perdiste!')
            break
        end 
    end 
end 

if(sumanueva ~= 7)
    disp('Ganaste!')
end 
