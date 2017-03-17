%
%  InclinationOfSignal.m
%  matlabFunctions/Signals
%
%  Created by Francisco de Borja Ponz Camps on 10/12/16.
%  Copyright 2016 fbponz. Released under MIT license.
%  NorthEnd - 2016.
%
%Esta funcion se encargara de calcular la pendiente entre dos puntos. El
%planteamiento es el siguiente e la ejecucion se guarda el valor para la
%proxima iteracion.
function [ output_args ] = InclinationOfSignal( input_args )

    ntotal = size(input_args);
    
    output_args=(1:1:size(input_args))'
    output_args(1)=input_args(2)-input_args(1);
    for c = 2:1:ntotal-1
        output_args(c)=input_args(c+1)-input_args(c);
    end


end

