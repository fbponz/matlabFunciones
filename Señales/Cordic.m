%
%Esta funcion se encargara de calcular en funcion de un angulo(rad), su
%descomposicion en senos y cosenos "mediante la utilizacion del algoritmo cordic".
% fbponz MIT - 3/12/14.

%introducimos el angulo en rad.
function Cordic(angulo,iteraciones)
   %Generamos los valores de atan(2^-it).
   %if(~radianes)
   %    angulo=(angulo*2*pi)/360;
   %end
   valores_atan=ones(iteraciones+1,0);
   for it=1:1:iteraciones+1
       valores_atan(it,1)= atan(2^(-it+1));
   end
    
   if angulo < 0;
        while angulo<0;  %primer paso.
            angulo=angulo+2*pi;
        end
   end
   if angulo > 0;
        angulo=rem(angulo,2*pi);
   end
   
   cuadrante= floor(angulo/(pi/2))+1;
   
   if cuadrante == 1;
        angulocordic = angulo;
   end
   
   if cuadrante == 2 || cuadrante == 3;
       angulocordic =angulo-pi;
   end
   if cuadrante == 4;
       angulocordic =angulo-(2*pi);
   end
   %angulocordic=angulocordic;
   % Desde la linea 12 a la linea 30 lo que hacemos realmente es adaptar
   % los posibles angulos para que esten comprendidos entre -pi/2 y pi/2
   % puesto que lo que disponemos es de un codigo que calcula bien el
   % cordic entre esos dos valores, para despues simplemente cambiar signos
   % y obtener la salida correspondiente.
   x=1;
   y=0;
   angulo_movido=0;
   for it=1:1:iteraciones
      
       if(angulocordic>angulo_movido && angulocordic~=angulo_movido)
             angulo_movido=angulo_movido+valores_atan(it,1);
       else
             angulo_movido=angulo_movido-valores_atan(it,1);
       end   
   end
   %
   %Invertimos las salidas X(coseno) e Y(seno) en caso de estar en los
   %cuadrantes 2 y 3.
   %El angulocordic, es el que obtenemos despues de realizar la conversión
   %a los valores comprendidos -pi/2 y pi/2. mientras que el angulo_movido
   %es el resultado de la suma/resta de los angulos calculados.
   if cuadrante == 1 || cuadrante == 4;
       xcoseno=cos(angulo_movido)
       yseno=sin(angulo_movido)
   end
   if cuadrante == 2 || cuadrante == 3;
       xcoseno=-1*cos(angulo_movido)
       yseno=-1*sin(angulo_movido)
   end
   %Sacamos el resultado de la componente x y la componente y.
   angulo_movido=angulo_movido
   angulocordic=angulocordic
end
