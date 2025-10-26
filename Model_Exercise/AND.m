function z = AND(w,varargin) 
% AND logic gate, multiplying all of the reactants together  
    if w == 0, 
        z = 0; 
    else 
        v = cell2mat(varargin); 
        z = prod(v)/w^(nargin-2);  
    end 