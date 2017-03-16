
%Esta script nos simula el movimiento de un robot diferencial.
% fbponz MIT - 10/12/16.
%%
%Modelo Cinematico de un robot Diferencial con dos ruedas.
VelMin=300
fkonstL=1;
fkonstR=1;
%%
fRelativeLeft=1.00-(MSL/763);
fRelativeRight=1.00-(MSR/763);
fRelativeLR=fRelativeLeft-fRelativeRight
%Vr=(0:1:ntotal)';
%Vl=(0:1:ntotal)';
ntotal = size(fRelativeLR);

for handler=1:1:ntotal
    if(fRelativeLR>0)
       Vr(ntotal)=VelMin;
       Vl(ntotal)=VelMin+(fkonstL*fRelativeLR);
    elseif(fRelativeLR<0)
       Vr(ntotal)=VelMin-(fkonstR*fRelativeLR);
       Vl(ntotal)=VelMin;     
    end
end
%%
figure
plot()
%%
Vl=(1:0.1:3)';
Vr=1.2*(1:0.1:3)';




%Modelo del robot.
anchoRobot= 0.6;
Vt=(Vr+Vl)/2;%Velocidad Lineal Conjunto.
Wt=(Vr-Vl)/anchoRobot;%Velocidad Angular del Conjunto.
%Estimacion de posicion en X e Y, obtenido desde Velocidad Lineal(Del 
%Conjunto)y Velocidad Angular(Del Conjunto).
x=Vt.*cos(Wt);
y=Vt.*sin(Wt);


plot(x,y)