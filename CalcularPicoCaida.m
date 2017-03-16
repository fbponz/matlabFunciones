% Esta funcion detecta el flanco de bajada y se cambia la salida hasta que
% llega un flanco de subida. 
% fbponz license MIT - 3/12/16.
function [ output_args ] = CalcularPicoCaida( input_args )
    ntotal = size(input_args);
    valorSalida= 0
    max = 600;
    min = 1000;
    modifiedMax = 0;
    modifiedMin = 0;
    lookForMax = 1;
    output_args = (1:1:ntotal)';
    for n = 1:1:ntotal
        
        output_args(n)= valorSalida;
        if ((input_args(n) > 600) && (lookForMax == 1))
            if max<input_args(n)
                max=input_args(n) 
                modifiedMax = 1;
            end
        elseif((input_args(n)> min)&&(lookForMax == 0))
            modifiedMin = 1;
        end
        
        if ((input_args(n) < max*0.7) && (modifiedMax ==1))
                min = input_args(n);
                valorSalida=1000;
                modifiedMax= 0;
                lookForMax = 0;                
        elseif((input_args(n)> min)&&(modifiedMin ==1))
                valorSalida= 0;
                max=600;
                lookForMax=1;
        end
        
    end

end

