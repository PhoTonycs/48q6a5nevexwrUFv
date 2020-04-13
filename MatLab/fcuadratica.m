function[y,vt,M,r]=fcuadratica(a,b,c)
% Esta parte es para escribir una descripci�n de la funci�n que definimos
% y poner qu� es cada par�mtro y c�mo usarlo, as� como la sintaxis.
% function[par�metros de salida (output)=nombreFunction(par�metros de entrada (inputs))]

% help fcuadratica Vemos que ya la reconoce MathLab

% Calculemos el v�rtice del polinomio
vt=-b/(2*a);

% Creo los puntos para graficar
x=vt-20:0.5:vt+20;

% Ecuaci�n cuadr�tica
y=a*x.^2 + b*x+c;

% Graficar
plot(x,y),grid
title('fcuadratica')
xlabel('x'),ylabel('y')
hold on % Para congelar la primer gr�fica
plot(vt,a*vt.^2+b*vt+c,'.k','MarkerSize',25)
% La �ltima gr�fica pone un punto en el v�rtice y con 
% MarkerSize,controlo el tama�o del punto

% Veo ahora si es un m�ximo o m�nimo
if a<0
    disp('M�ximo')
    M=max(y);
elseif a>0
    disp('M�nimo')
    M=min(y);
else
    disp('L�nea recta')
    M=0;
end

% Obtengo las ra�ces
%r(1)=(-b+sqrt(b^2-4*a*c))/(2*a);
%r(2)=(-b-sqrt(b^2-4*a*c))/(2*a);
r=roots([a b c]);