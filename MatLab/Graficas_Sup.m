%% Gr�ficas de superficie

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

% mesh(z)
z=[1:10;
2:2:20;
3:12]

% Mesh(z) utiliza los renglones de la matriz z como los l�mites del eje x,
% mientras que las columnas son usadas como los l�mites del eje y
% Los valores de x & y se basan en las dimensiones de la matriz.
figure
mesh(z)
xlabel('x')
ylabel('y')
zlabel('z')
title('Mesh(z)')

pause
% mesh(x,y,z)
x=linspace(1,50,10);
y=linspace(500,1000,3);
z=[1:10;
2:2:20;
3:12]
figure
mesh(x,y,z) 
% La diferencia con mesh(z) es que esta funci�n toma como l�mites para los
% ejes a x & y pero los puntos a graficar ser�n el n�mero de renglones para
% el eje x espaciados linealmente de acuerdo a la dim de los renglones de
% la matriz z y an�logamente para y.
xlabel('x')
ylabel('y')
zlabel('z')
title('Mesh(x,y,z)')

pause
% surf(x,y,z)
x=linspace(1,50,10);
y=linspace(500,1000,3);
z=[1:10;
2:2:20;
3:12]
% Esta funci�n es lo mismo que mesh(x,y,z) con la diferencia que ahora se
% sombrean los espacios entre los puntos graficados.
surf(x,y,z)
xlabel('x')
ylabel('y')
zlabel('z')
title('surf(x,y,z)')
pause
% Formato de sombreado implementado con shadding
shadding interp
% shadding flat