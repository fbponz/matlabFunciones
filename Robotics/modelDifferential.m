%
%  modelDifferential.m
%  matlabFunctions/Signals
%
%  Created by Francisco de Borja Ponz Camps on 10/12/16.
%  Copyright 2016 fbponz. Released under MIT license.
%  NorthEnd - 2016.
%
%Este Script se encarga de calcular una odometria desde unas velocidades 
%y representarla en X e Y.
VelL=1:1:10;
VelR=1:1:10;

VelLineal=(VelR+VelL)./2;
VelAngular=(VelR+VelL)./(0.5);

%%

VelLineal=(VelRight+VelLeft)./2;%Velocidad Lineal Conjunto.
VelAngular=(VelRight-VelLeft)./(0.5); % 0.5 -> Ancho entre ruedas. %Velocidad Angular del Conjunto.
%Estimacion de posicion en X e Y, obtenido desde Velocidad Lineal(Del 
%Conjunto)y Velocidad Angular(Del Conjunto).
%%
x=VelLineal.*cos(VelAngular);
y=VelLineal.*sin(VelAngular);
%%
plot(x,y)


