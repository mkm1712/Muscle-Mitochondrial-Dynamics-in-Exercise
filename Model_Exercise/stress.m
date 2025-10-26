function z=stress(a,W,t_start,t) 
z=(1+a*W*(1-exp((t_start-t).*heaviside(-t_start+t)/0.4)));
end