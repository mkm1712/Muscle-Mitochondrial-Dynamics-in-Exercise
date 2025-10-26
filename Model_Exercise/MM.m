function BB= MM(r,p,v_f,k_f,v_b,k_b,a,W,t_start,t)
BB= stress(a,W,t_start,t)*((v_f/k_f)*r-(v_b/k_b)*p)/(1.0+(r/k_f)+(p/k_b));
end
