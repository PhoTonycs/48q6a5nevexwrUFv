%% Gr�ficas Tridimensionales

clear, clc
x=linspace(0,10*pi,1000);
y=cos(x);
z=sin(x);

figure
plot3(x,y,z)
grid
xlabel('angulo')
ylabel('cos(x)')
zlabel('cos(x)')
title('H�lice')

pause % Presionar cualquier tecla para continuar la ejecuci�n.

figure
comet3(x,y,z), % Crea la gr�fica de manera animada
grid
xlabel('angulo')
ylabel('cos(x)')
zlabel('cos(x)')
title('H�lice')
 