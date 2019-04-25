% 1.4
% Implemente  un programaque  permita  hacer  una  gráfica 2D de la ecuación f(x,t)=sin(t)cos(x). Para ello, 
% el programagenerará una animación con el comportamiento de la función para cada valor de t. Por tanto, el  
% programa debe:
% 	a) Solicitar al usuario los rangos de x, t(mínimos, máximos, número de puntos) 
% 	b) Solicitar al usuarioel tiempo que debe esperarse entre cuadro y cuadro de la animación
% 	c) Generar la gráfica y forzar los ejes a rangos apropiados, de tal manera que los diferentes comportamientos
%	   de la ecuación puedan visualizarse por completo. 

x = 0:0.05:4*pi;
y = sin(x);

curve = animatedline;
set(gca, 'XLim', [0 4*pi], 'YLim', [-1 1]);
grid on;

for i=1:length(x)
	addpoints(curve,x(i),y(i));
	drawnow	
end