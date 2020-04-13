t=0:0.1:10;
y1=2*sin(t);
y2=cos(4*t)

figure(1)
plot(t,y1)
title('Funciones Peri�dicas') % Coloca un �tulo al gr�fico
xlabel('tiempo(s)') % Coloca un t�tulo al eje x
ylabel('y1=2sin(t)') % Coloca t�tulo al eje y
grid on % Coloca una malla al gr�fico

figure(8)
plot(t,y2)
title('Funciones Peri�dicas') % Coloca un �tulo al gr�fico
xlabel('tiempo(s)') % Coloca un t�tulo al eje x
ylabel('y2=cos(4t)') % Coloca t�tulo al eje y
grid on % Coloca una malla al gr�fico