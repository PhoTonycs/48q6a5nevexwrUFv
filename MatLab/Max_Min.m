% Hallemos el m�ximo elemento de un vector o matriz max(x)
vec=[2 7 10]
m=[12 4 5; 98 12 43]

max(vec)
max(m) % El m�ximo de cada columna.

% Tambi�n se puede escribuir como [a,b]=max(x) para ver las posiciones de
% los m�ximos

[a,b]=max(m)

% Hallemos el m�nimo elemento de un vector o matriz max(x)
min(vec)
m'
min(m') % El m�nimo de cada columna una vez transpuesta m.

% Tambi�n se puede escribuir como [a,b]=min(x) para ver las posiciones de
% los m�ximos

[a,b]=min(m')

% Sumar elementos de un vector matriz sum(x)
sum(vec)
sum(m) % Suma por columnas

% Sumar en series consecutivas
cumsum(vec)
cumsum(m) % Por oclumnas

% Productorio
prod(vec)
prod(m) % Por oclumnas

% Series de productos consecutivos cumprod(x)
cumprod(vec)
cumprod(m)

% Acomodar elementos de forma ascendente de un vector o matriz sort(x)
sort(vec)
sort(m) % Por columnas
sort(m') % Por renglones

% Acomodar elementos de forma descendente de un vector o matriz sort(x,'descend')
sort(vec,'descend')
sort(m,'descend') % Por columnas
sort(m','descend') % Por renglones

% Ordenar los datos de la fila n sortrows(x,n)
m
sortrows(m,3) % En realidad son columnas

% Ver tama�o de un vector o matriz
size(vec)
size(m)

% La dimensi�n mayor de una matriz
length(m)
