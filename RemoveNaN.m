%
%  RemoveNan.m
%  matlabFunctions
%
%  Created by Francisco de Borja Ponz Camps on 10/10/16.
%  Copyright 2016 fbponz. Released under MIT license.
%  NorthEnd - 2016.
%
%Esta funcion se encarga de quitar los valores NaN de arrays y les coloca
%el valor de la posicion anterior del array.

function [ output_args ] = RemoveNaN( input_args )
    output_args = (1:1:length(input_args))';
    for handler = 1:1:length(input_args)
       output_args(handler)=input_args(handler);
       if(isnan(input_args(handler)))
           output_args(handler)=input_args(handler-1);
       end
    end
end

