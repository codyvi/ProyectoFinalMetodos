function [time1, time2,a]= ejercicio3(min, max, numInt)
    
   hold on;
   tic;
    syms y(x);
    y(x) = piecewise(-7<x<=5, -x, 5<x<7, 2.*x-10, x>7, x.^2);
        d = linspace(min, max, numInt);
     plot(d,y(d))
     
     syms h(x);
    h(x) = piecewise(x<3, 2, 5<x<20, log(x), x>23, exp(x));
     e = linspace(min, max, numInt);
     plot(e,h(e))
     
     syms g(x);
    g(x) = piecewise(x<-3, 2, -3<=x<=11, x./2, x>11, 3);
     f = linspace(min, max, numInt);
     plot(f,g(f))
     time1 = toc
     
    tic;
    curve = animatedline('Color','r','Marker', 'none');
    curve2 = animatedline('Color','b','Marker', 'none');
    curve3 = animatedline('Color','g','Marker', 'none');
    for i =min : (max-min)/numInt:max
         if i <=5 && i>-7
             addpoints(curve,i,-i);
             drawnow limitrate
             pause(0);
         end
         if  5<i && i<7
             addpoints(curve,i,2*i-10);
             drawnow limitrate
             pause(0);
         end
         if i>7
             addpoints(curve,i,i^2);
             drawnow limitrate
             pause(0);
         end
    end
        
         for j =min : (max-min)/numInt:max
         if j <3
             addpoints(curve2,j,2);
             drawnow limitrate
             pause(0);
         end
         if  5<j && j<=20
             addpoints(curve2,j,log(j));
             drawnow limitrate
             pause(0);
         end
         if j>23
             addpoints(curve2,j,exp(j));
             drawnow limitrate
             pause(0); 
         end
         end
    
         
          for k =min : (max-min)/numInt:max
         if  k<-3
             addpoints(curve3,k,11);
             drawnow limitrate
             pause(0);
         end
         if  -3<k && k<=11
             addpoints(curve3,k,k/2);
             drawnow limitrate
             pause(0);
         end
         if k>11
             addpoints(curve3,k,3);
             drawnow limitrate
             pause(0);
         end
          end
         time2 =toc
     
         a=gcf
    
end