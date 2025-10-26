function Energy = Input2(time,Sprint,Endurance,Resistance,Active_flag,Ex_start,Ex_stop,Amp,T_cycle) 

 Energy=Active_flag*(time > Ex_start)*(time < ...
     Ex_stop)*((Sprint*Amp*max(0,sign(sin(time*(2*pi/T_cycle)))))+(Endurance*Amp)+(Resistance*Amp*max(0,sign(sin(time*(2*pi/T_cycle))))));