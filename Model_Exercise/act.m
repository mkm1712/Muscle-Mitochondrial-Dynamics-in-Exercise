function fact = act(x,w,n,EC50) 
% hill activation function with parameters w (weight), n (Hill coeff), EC50 
    beta = (EC50.^n - 1)./(2*EC50.^n - 1); 
    K = (beta - 1).^(1./n); 
    fact = w.*(beta.*x.^n)./(K.^n + x.^n); 
    if fact>w,                 % cap fact(x)<= 1 
        fact = w; 
    end