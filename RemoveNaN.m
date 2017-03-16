%Esta funcion se encarga de quitar los valores NaN de arrays y les coloca
%el valor de la posicion anterior.
% fbponz MIT - 14/12/16.
function [ output_args ] = RemoveNaN( input_args )
    output_args = (1:1:length(input_args))';
    for handler = 1:1:length(input_args)
       output_args(handler)=input_args(handler);
       if(isnan(input_args(handler)))
           output_args(handler)=input_args(handler-1);
       end
    end
end

