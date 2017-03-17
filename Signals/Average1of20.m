%
%  Average1of20.m
%  matlabFunctions/Signals
%
%  Created by Francisco de Borja Ponz Camps on 10/12/16.
%  Copyright 2016 fbponz. Released under MIT license.
%  NorthEnd - 2016.
%
%Esta funcion se encargara de calcular una salida de media cada 20 valores.

function [ output_args ] = Average1of20( input_args )

ntotal = size(input_args);

output_args = (1:1:(ntotal/20))';

for handler=0:20:ntotal-20
    mediaparcial=0;
    for handlerfino=1:1:19
        mediaparcial=mediaparcial+input_args(handler+handlerfino);
    end
    mediaparcial=mediaparcial/20;
    if handler < 20
        output_args(1)=mediaparcial;
    end
    if handler >= 20
        output_args(handler/20)=mediaparcial;
    end
end
end
