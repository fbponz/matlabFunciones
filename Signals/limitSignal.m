%
%  limitSignal.m
%  matlabFunctions/Signals
%
%  Created by Francisco de Borja Ponz Camps on 26/5/17.
%  Copyright 2014 fbponz. Released under MIT license.
%  NorthEnd - 2014.
%
%

function [ output_args ] = limitSignal( input_args, lvl, mode)

    ntotal=size(input_args);
    output_args=(1:1:ntotal)';
    for hand=1:1:ntotal
        if(mode==0)
            if((input_args(hand))> lvl)
                output_args(hand)=lvl;
            else
                output_args(hand)=input_args(hand);
            end
            
        elseif(mode==1)
            if((input_args(hand))< lvl)
                output_args(hand)=lvl;
            else
                output_args(hand)=input_args(hand);
            end
            
        end
    end

end

