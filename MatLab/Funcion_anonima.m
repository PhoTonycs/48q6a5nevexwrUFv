% Funciones an�nimas
% Sintaxis funci�n_an�nima=@(par�metros de entrada)funco�n

ln=@(x) log(x)

% Una vez se limpia el �rea de trabajo, la funci�n an�nima ya no existe m�s
% Las funciones an�nimas y los manipuladores de funci�n relacionados son
% �tiles en funciones que requieren otras funciones como entrada (funciones
% de funci�n).
% Las funciones an�nimas se pueden guardar como archivos .mat, tal como
% cualquier variable, y se pueden restaurar con el comando load