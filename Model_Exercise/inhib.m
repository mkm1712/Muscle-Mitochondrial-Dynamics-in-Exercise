function finhib = inhib(x,w,n,EC50) 
% inverse hill function with parameters w (weight), n (Hill coeff), EC50 
    finhib = w - act(x,w,n,EC50);