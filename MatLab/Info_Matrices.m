z=[2,-4,3.3;19,0.01,-0.4;3 2 -6]

% Acceder a una entrada de la matriz m(fila,columna)
z(3,2)
z(1,2)
z(3,3)
z(end,end)
z(1,end)
z(end,2)

% Acceder a un rengl�n completo m(rengl�n,:)
z(2,:)

% Acceder a una columna completa z(:,columna)
z(:,1)

% Acceder a bloques espec�ficos de renglones z(rengl�n,columna inicio:columna final)
z(2,2:3)
z(2,1:end)
z(2,1:end-1)

% Acceder a bloques espec�ficos de columnas z(rengl�n inicio:rengl�n final, columna)
z(2:3,1)
z(1:end,end)
z(1:end-1,end-1)

% Acceder a entradas espec�ficas de una columan m([entradas], columna)
z([2 3],1)
z([1 3],end)