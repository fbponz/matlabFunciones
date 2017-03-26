function [ output_args ] = signSignal( input_args )

ntotal = size(input_args);
output_args = (1:1:ntotal)';
for handler=1:1:ntotal
    if((input_args(handler))>500)
        output_args(handler)=1;
    elseif ((input_args(handler))<=500)
        output_args(handler)=-1;
    end
end

end
