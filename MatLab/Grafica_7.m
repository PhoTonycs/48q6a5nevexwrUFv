t=0:0.1:10;
y1=2*sin(t);
y2=cos(4*t)
plot(t,y1,'-c',t,y2,'--k','linewidth',6)
title('Funcione Peri�dicas','Fontsize',18) % Coloca un �tulo al gr�fico
xlabel('tiempo(s)','Fontsize',14) % Coloca un t�tulo al eje x
ylabel('y1,y2','Fontsize',10) % Coloca t�tulo al eje y
grid on % Coloca una malla al gr�fico
% Mantiene la gr�fica para superponerla con la siguiente
legend('Funci�n 2sin(t)','Funci�n cos(4t)') % Coloca una leyenda al gr�
