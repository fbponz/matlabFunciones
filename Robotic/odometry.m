%Este Script se encarga de convertir una odometria y representarla en X e
%Y.
% fbponz MIT - 10/12/16.
VL=VL1/1000;
Theta=Theta1/1000;

OdomX=VL.*sin(Theta)
OdomY=VL.*cos(Theta) 
OdomeX=(1:1:length(OdomX))';
OdomeY=(1:1:length(OdomY))';

OdomeX(1)=OdomX(1);
OdomeY(1)=OdomY(1);

for handler = 2:1:length(OdomX)
    OdomeX(handler)=OdomeX(handler-1)+OdomX(handler);
    OdomeY(handler)=OdomeY(handler-1)+OdomY(handler);
end

plot(OdomeY,OdomeX)