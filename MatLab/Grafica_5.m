% Como poner distintas gr�ficas en un s�lo cuadro
% subplot(filas,columnas,posici�n a tomar)

t=0:0.1:10;
y1=2*sin(t);
y2=cos(4*t)

figure
subplot(2,1,1)
plot(t,y)
subplot(2,1,2)
plot(t,z)