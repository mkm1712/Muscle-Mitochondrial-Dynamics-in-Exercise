function z=adjustVb(V_f,K_b,K_f,K_eq,ph)
z=(V_f*K_b/(K_f*K_eq)*10^(7.6-ph));
end