%function Energy = InputF1(time,Sprint,Endurance,Resistance,Ex_start,Amp) 

 %Energy=(Sprint*Amp*((time > Ex_start)*(time < Ex_start+0.5)+(time > Ex_start+4.5)*(time < Ex_start+5)+(time > Ex_start+9)*(time < Ex_start+9.5)))...
 % +(Endurance*Amp*(time > Ex_start)*(time < Ex_start+90)) ...
 % +(Resistance*Amp*((time > Ex_start)*(time < Ex_start+0.5)+(time > Ex_start+2.5)*(time < Ex_start+3)+(time > Ex_start+5)*(time < Ex_start+5.5)+ ...
 % (time > Ex_start+7.5)*(time < Ex_start+8)+(time > Ex_start+10)*(time < Ex_start+10.5)+(time > Ex_start+12.5)*(time < Ex_start+13)));

 Amp=1
Ex_start=10;
Ex_stop=200;
T_cycle=1;  % square wave with period of 1 min;
%frequency=Ex_end/T;
  t=[0:1:500];%exercise on and off, every T min. 
 % y=(square(t/T*2*pi)+1)/2;
 % plot(t,y)

 Sp=1;
 % En=0;
 % Re=0;
for i=1:501
    time=t(i);

 
if (time <= Ex_start) || (time >= Ex_stop)
    Energy=0;
elseif Sp==1 
    Energy=Amp*max(0,sign(sin(time*(2*pi/T_cycle))));
elseif En==1
     Energy=Amp;
 elseif Re==1
     Energy=Amp*max(0,sign(sin(time(2*pi/T_cycle))));
else
    Energy=0;
end
 M(i)=Energy;
end

plot(t,M)