% Gr�ficas Animadas
function varargout=animacion(varargin)
% Inicialicemos las variables auxiliares
parar=false; FCos=false

%Crea una figura, le establece nombre, posici�n y color (Frame)
fig(1)=figure('name','Monitor','menubar','none','position',[200 200 800 700],'color',[0.9 0.6 0.3])
% positon [x_i y_i x_f y_f] cuyo or�gen est� situado en la esquina inferior izquierda de la pantalla y color: RGB

% Crea un AXE, dentro de la figura o Frame, que establece la posici�n y los
% l�mites
axe(1)=axes('parent',fig(1),'units','pixels','position',[60 80 600 550], 'xlim',[0 40],'ylim',[-3 3],'xgrid','on','ygrid','on')
% parent hace que el axe se coloque sobre la fig(1) y %positon [x_i y_i x_f
% y_f] cuyo or�gen est� situado en la esquina inferior izquierda del Frame

% Modifica las etiquetas del eje x & y de el AXE
set(get(axe(1),'XLabel'),'String','Tiempo (s)')
set(get(axe(1),'YLabel'),'String','Funci�n')

%Crea las lineas que se van a graficar en el axe, con su color y grosor
%correspondientes
lin(1)=line('parent',axe(1),'xdata',[],'ydata',[],'Color','r','LineWidth',2.5);
lin(2)=line('parent',axe(1),'xdata',[],'ydata',[],'Color','k','LineWidth',2);
% Como las l�neas de las gr�ficas se ir�n creando, los datos en x & y
% estar�n vac�os y se ir�n modificando ocn una funci�n set

% Creemos el Frames y texto de los botenes de control
txbx(1)=uicontrol('parent',fig(1),'style','text','string','Funci�n Seno','position',[680 170 100 50],'background',[0.9 0.6 0.3],'callback',@texto,'fontsize',11)
txbx(2)=uicontrol('parent',fig(1),'style','text','string','Seno','position',[680 150 100 50],'callback',@texto,'fontsize',11)
txbx(3)=uicontrol('parent',fig(1),'style','text','string','Funci�n Coseno','position',[680 270 100 50],'background',[0.9 0.6 0.3],'callback',@texto,'fontsize',11)
% Con uicontrol creeamos botones, el sistema tiene or�gen en la esquina
% inferior izquierda del Frame, con background se pone un color de fondo al
% bot�n, si no se pone background se escoger� un color por defecto
% (Griseaso).

%Crea botones y cuadros de texto dentro de la figura.
bot(1)=uicontrol('parent',fig(1),'style','pushbutton','string','Detener','position',[680 50 100 50],'callback',@stop,'fontsize',11)
bot(2)=uicontrol('parent',fig(1),'style','pushbutton','string','Coseno','position',[680 250 100 50],'callback',@coseno,'fontsize',11)
% Con callback llamaremos a las funciones stop y coseno

% Coloquemos en el centro el Frame
movegui(fig(1),'center');

    %% Funci�n PARAR
    function varargout=stop(hObject,evendata)
        parar=true;
    end

    %% Funci�n Graficar Coseno
    function varargout=coseno(hObject,evendata)
        FCos=true;
    end    

    %% Funci�n Graficar
        tiempo=[0]; % Genera los puntos en t
        salida_sen=[0]; % Genera los puntos de la funci�n seno. 
        salida_cos=[0]; % Genera los puntos de la funci�n coseno
        % Cada cuanto se va graficando en el axe , es el intervalo
        dt=0.1;
        % Limite de graficaci�n
        limx=[0 40];
        set(axe(1),'xlim',limx); % Modifica el par�metro xlim del axe(1)
        
        %% Grafico
        k=1; nit=800;
        while(~parar) % ~ Niega el valor l�gico
            Y=2*sin(tiempo(k));
            Z=cos(4*tiempo(k));
            % Se guarda tiempo(k) en el vector tiempo[] crean las funciones seno y coseno, se guardan en las
            % variables Y y Z,respc.
            
            if FCos==true
                set(bot(2),'string',Z);
                % Se modificar� el texto del bot�n bot(2) por el valor de
                % la funci�n Z.
            end
            set(txbx(2),'string',Y)
            % Actualicemos las variables del gr�fico con vectores din�micos
            tiempo=[tiempo tiempo(end)+dt];
            salida_sen=[salida_sen Y];
            salida_cos=[salida_cos Z];
            
            % Grafica con ayuda de las l�neas creadas anteriormente.
            set(lin(1),'xdata',tiempo,'ydata',salida_sen); % Escribe en la data lo de las funciones.
            pause(dt); %Espera 0.1s para cada intervalo de interacci�n
            
            if FCos==true
                set(lin(2),'xdata',tiempo,'ydata',salida_cos);
            end
            
            if tiempo(end)>=limx % Actualiza gr�fica cuando llega a su l�mte en x.
                limx=[0 limx(2)+40] % Amplia el l�mte x
                set(axe(1),'xlim',limx) % Se modifica el xlim con limx ampli�ndose
            end
            
            k=k+1
            if(k==nit) % Vemos si llega al l�mite de segundos a graficar.
                parar=true;
            end
                
        end    
end