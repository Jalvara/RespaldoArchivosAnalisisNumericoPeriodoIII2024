%Splines Cúbicos
x = linspace(-1,1,20);
y =1./(25*x.^2.+1);
y=[25/338,y,-25/338];
xspline = -1:0.001:1;
yspline = spline (x,y,xspline);
%xspline es un argumento que nos sirve para evaluar el polinomio creado
%en los puntos que uno desee, en este caso sobre xspline
title ("Ajuste de puntos sobre 1/(25x^2+1)");
plot (xspline,1./(25.*xspline.^2+1),"r", xspline,yspline,"g-", x,y,"b+");
legend ("original", "interpolacion", "interpolacion sobre los puntos");
