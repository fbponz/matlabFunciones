%Este Script se encarga de calcular una odometria desde unas velocidades 
%y representarla en X e Y.
% fbponz MIT - 10/12/16.
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


