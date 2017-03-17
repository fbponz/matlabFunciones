%
%  odometry.m
%  matlabFunctions/Signals
%
%  Created by Francisco de Borja Ponz Camps on 10/12/16.
%  Copyright 2016 fbponz. Released under MIT license.
%  NorthEnd - 2016.
%
%Este Script se encarga de convertir una odometria y representarla en X e
%Y.

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