function Energy = Input(time,Sprint,Endurance,Resistance,Ex_start,Ex_stop,Amp,T_cycle) 
% hill activation function with parameters w (weight), n (Hill coeff), EC50 
if (time <= Ex_start) || (time >= Ex_stop)
    Energy=0;
elseif Sprint==1 
    Energy=Amp*max(0,sign(sin(time*(2*pi/T_cycle))));
elseif Endurance==1
    Energy=Amp;
elseif Resistance==1
    Energy=Amp*max(0,sign(sin(time*(2*pi/T_cycle))));
else
    Energy=0;
end
 