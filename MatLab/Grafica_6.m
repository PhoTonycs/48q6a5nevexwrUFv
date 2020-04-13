t=0:0.1:10;
y1=2*sin(t);
y2=cos(4*t)
plot(t,y1,'-c',t,y2,'--k')
plot(t,y1,':m',t,y2,'-or')
title('Funcione Peri�dicas') % Coloca un �tulo al gr�fico
xlabel('tiempo(s)') % Coloca un t�tulo al eje x
ylabel('y1,y2') % Coloca t�tulo al eje y
grid on % Coloca una malla al gr�fico
hold % Mantiene la gr�fica para superponerla con la siguiente
legend('Funci�n 2sin(t)','Funci�n cos(4t)') % Coloca una leyenda al gr�
