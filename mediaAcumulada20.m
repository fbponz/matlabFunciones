%Esta funcion se encargara de calcular una salida de media cada 20 valores.
% fbponz MIT - 11/12/16.
function [ output_args ] = mediaAcumulada20( input_args )

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

