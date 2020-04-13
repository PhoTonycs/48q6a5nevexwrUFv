%% Gr�ficas de contorno
% Tridimensionales
% plot3(x,y,z)	Crea una grafica lineal tridimensional
% comet3(x,y,z)	Genera una versi�n animada de plot3
% mesh(z)
% mesh(x,y,z)	Crea una superficie de malla
% surf(z) surf(x,y,z)	Crea una grafica de superficie similar a la funci�n mesh
% shading interp	Interpola entre los colores usados para ilustrar gr�ficas de superficie
% shading flat	Colorea cada secci�n de ret�cula con un color s�lido
% colormap(map_name)	Permite al usuario seleccionar el patron de color a usar en las gr�ficas de superficie
% contour(z) controur(x,y,z)	Genera una gr�fica de contorno
% surfc(z) surfc(x,y,z)	Crea una gr�fica de superficie combinada con una gr�fica de contorno
% pcolor(z) pcolor(x,y,z)	crea una gr�fica en pseudocolor

clear,clc

x=[-2:0.2:2];
y=[-2:0.2:2];
[X,Y]=meshgrid(x,y)
Z=X.*exp(-X.^2 - Y.^2)

subplot(2,2,1)
mesh(X,Y,Z)
title('Gr�fica Mesh'),xlabel('x'),ylabel('y')
zlabel('z')

subplot(2,2,2)
surf(X,Y,Z)
title('Gr�fica de Superficie'),xlabel('x'),ylabel('y')
zlabel('z')

subplot(2,2,3)
contour(X,Y,Z)
title('Gr�fica de Contorno'),xlabel('x'),ylabel('y')
zlabel('z')

subplot(2,2,4)
surfc(X,Y,Z) % surf y contour en una sola 
% representaci�n tridimensional.
title('Gr�fica de Contorno y Superficei'),xlabel('x'),ylabel('y')
zlabel('z')

% colormap(bone) cambia el color de las gr�ficas

%% Pseudocolor
figure
pcolor(X,Y,Z) % Vista superior de la gr�fica generada por surf

%% Pseudocolor sin reticula
figure
pcolor(X,Y,Z)
shading interp