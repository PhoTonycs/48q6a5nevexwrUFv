%% Condicionales, segundo ejemplo

clear,clc

%% switch

n=input('Digite un n�mero entero: ');

switch n
    case -1
        disp('Escribiste -1')
    case 0
        disp('Escribiste 0')
    case 1
        disp('Escribiste 1')
    otherwise
        disp('Otro n�mero real.')
end