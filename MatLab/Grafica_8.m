t=0:0.1:10;
y1=2*sin(t);
y2=cos(4*t)
figure(1)
plot(t,y1,'-c',t,y2,'--k','linewidth',6)
title('Funciones Peri�dicas') % Coloca un �tulo al gr�fico
xlabel('tiempo(s)') % Coloca un t�tulo al eje x
ylabel('y1,y2') % Coloca t�tulo al eje y
grid on % Coloca una malla al gr�fico
% Mantiene la gr�fica para superponerla con la siguiente
legend('Funci�n 2sin(t)','Funci�n cos(4t)') % Coloca una leyenda al gr�
axis([5 10 -1 1])

figure(2)
plot(t,y1,'-c',t,y2,'--k','linewidth',6)
title('Funciones Peri�dicas') % Coloca un �tulo al gr�fico
xlabel('tiempo(s)') % Coloca un t�tulo al eje x
ylabel('y1,y2') % Coloca t�tulo al eje y
grid on % Coloca una malla al gr�fico
% Mantiene la gr�fica para superponerla con la siguiente
legend('Funci�n 2sin(t)','Funci�n cos(4t)') % Coloca una leyenda al gr�
axis([3 8.5 -1.5 1.5])
text(5,0,'Un texto posicionado en coordenadas cartesianas.')

figure(3)
plot(t,y1,':m',t,y2,'-or','linewidth',2)
title('Funcione Peri�dicas \alpha \pi \gamma','Fontsize',18) % Coloca un �tulo al gr�fico
xlabel('tiempo(s)','Fontsize',14) % Coloca un t�tulo al eje x
ylabel('y1,y2','Fontsize',10) % Coloca t�tulo al eje y
grid on % Coloca una malla al gr�fico
% Mantiene la gr�fica para superponerla con la siguiente
legend('Funci�n 2sin(\theta)','Funci�n cos(4\rho)') % Coloca una leyenda al gr�
axis([3 8.5 -1.5 1.5])
text(5,0,'Un texto posicionado en coordenadas cartesianas.')