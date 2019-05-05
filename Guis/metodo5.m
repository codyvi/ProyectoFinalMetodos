function [bV, bI] = metodo5(func, iter, cols, hmcr, bw, par, rows, max, min)
    
    % func = string(func)
    % func = "@(x) sum(x.^2,1)";
    f = inline(func,'x');
    func = @(x) feval(f,x);
    % func = str2func(func);
    iter = str2double(iter);
    cols = str2double(cols);
    hmcr = str2double(hmcr);
    bw = str2double(bw);
    par = str2double(par);
    rows = str2double(rows);
    max = str2double(max);
    min = str2double(min);
    hm = rand(rows, cols);
    fhm = func(hm);
    temp = [];
    
   for i = 1:iter
       for j = 1:cols
       randNum = rand();
           if (randNum <= hmcr)
               randomRow = randi(rows);
               selected = hm(randomRow, j);
               randNum2 = rand();
               if (randNum <= par)
                   selected = selected + bw*(rand()-0.5);
               end
               temp(j) = selected;
           else
               temp(j) = rand();
           end
       end
       tempEval = func(temp);
       [worstEval, worstIndex] = sort(fhm, 'descend');
        if (worstEval(1) < tempEval ) 
            hm(worstIndex(1)) = temp;
        end
   end
   
   [bestValue, bestIndex] = sort(fhm);
   bV = func(hm(bestIndex(1),:));
   bI = hm(bestIndex(1),:);
   fhm;
   disp('Mejor solución')
   disp(hm(bestIndex(1), :))
   disp('Valor de la mejor solución')
   disp(bestValue(1))
   
   
   plot(hm(bestIndex(1), :), func(hm(bestIndex(1), :)),'Color', 'red', 'Marker', 'o')
   plot(hm(bestIndex(size(fhm)), :),func(hm(bestIndex(size(fhm), :))),'Color', 'blue', 'Marker', 'o')
   % plot(hm(bestIndex(1), :),'Color', 'blue', 'Marker', 'o')
   
   
   

end