t=0:0.1:10;
y=2*sin(t);
plot(t,y)
title('Funcione Peri�dicas') % Coloca un �tulo al gr�fico
xlabel('tiempo(s)') % Coloca un t�tulo al eje x
ylabel('y,z') % Coloca t�tulo al eje y
grid on % Coloca una malla al gr�fico
hold % Mantiene la gr�fica para superponerla con la siguiente
z=cos(4*t)
plot(t,z)
legend('Funci�n 2sin(t)','Funci�n cos(4t)') % Coloca una leyenda al gr�
