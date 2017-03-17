%
%  AverageAccumulate20.m
%  matlabFunctions/Signals
%
%  Created by Francisco de Borja Ponz Camps on 11/12/16.
%  Copyright 2016 fbponz. Released under MIT license.
%  NorthEnd - 2016.
%
%Esta funcion se encargara de calcular una salida de media cada 20 valores.

function [ output_args ] = AverageAccumulate20( input_args )

ntotal = size(input_args);

output_args = (1:1:ntotal)';

for handler=1:1:ntotal
    input_args(handler)=input_args(handler)/20;
    if(handler>=20)
        media=0;
        for handlerMedia=0:1:19
            media=media+input_args(handler-handlerMedia);
        end
        output_args(handler)=media/20;
    end
    
end

end

