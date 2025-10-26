function YY= GG(Sprint,Amp,t_on,t_off, time)
if time>t_on && time<=t_off && Sprint==1
    YY=Amp;
else
    YY=0;
end
end
