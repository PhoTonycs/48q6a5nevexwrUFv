% Ejemplo blucles
clear,clc
%% Multiplicaci�n matricial

% Multiplicaci�n de una matriz por un escalar

A=ones(200);
length(A(:)) % N�mero de elementos en una matriz.
tic
for i=1:length(A(:))
    B(i)=pi*A(i);
end
toc % Cuenta el tiempo de ejecuci�n entre las intrucciones tic y toc